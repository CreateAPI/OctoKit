// The MIT License (MIT)
//
// Copyright (c) 2021 Alexander Grebenyuk (github.com/kean).

import XCTest
import Mocker
@testable import APIClient
@testable import OctoKit

final class SchemasTests: XCTestCase {
    var decoder: JSONDecoder!
    var encoder: JSONEncoder!
    
    override func setUp() {
        super.setUp()
        
        decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
    }
    
    func testRoot() throws {
        // WHEN
        let root = try decoder.decode(Paths.Root.GetResponse.self, from: json(named: "root"))
        
        // THEN
        XCTAssertEqual(root.currentUserURL, "https://api.github.com/user")
    }
    
    func testIntegration() throws {
        // WHEN
        let integration = try decoder.decode(Integration.self, from: json(named: "integration"))
        
        // THEN
        XCTAssertEqual(integration.id, 1)
        XCTAssertEqual(integration.slug, "octoapp")
        XCTAssertEqual(integration.nodeID, "MDExOkludGVncmF0aW9uMQ==")
        
        XCTAssertEqual(integration.owner?.login, "github")
        XCTAssertEqual(integration.owner?.isSiteAdmin, true)
        
        XCTAssertEqual(integration.permissions["metadata"], "read")
        XCTAssertEqual(integration.permissions["issues"], "write")
        XCTAssertEqual(integration.permissions["single_file"], "write") // Additional property
        
        XCTAssertEqual(integration.events, ["push", "pull_request"])
    }
    
    func testAppManifestsConversationsPostResponse() throws {
        // WHEN
        let response = try decoder.decode(Paths.AppManifests.WithCode.Conversions.PostResponse.self, from: json(named: "app-manifests-conversations-post-response"))
        
        // THEN inline integration type is parsed correctly
        let integration = response.integration
        
        XCTAssertEqual(integration.id, 1)
        XCTAssertEqual(integration.slug, "octoapp")
        XCTAssertEqual(integration.nodeID, "MDxOkludGVncmF0aW9uMQ==")
        
        XCTAssertEqual(integration.owner?.login, "github")
        XCTAssertEqual(integration.owner?.isSiteAdmin, true)
        
        XCTAssertEqual(integration.permissions["metadata"], "read")
        XCTAssertEqual(integration.permissions["issues"], "write")
        XCTAssertEqual(integration.permissions["single_file"], "write") // Additional property
        
        XCTAssertEqual(integration.events, ["push", "pull_request"])
        
        // THEN separate object schema is parsed correctly
        XCTAssertEqual(response.clientID, "Iv1.8a61f9b3a7aba766")
        XCTAssertEqual(response.clientSecret, "1726be1638095a19edd134c77bde3aa2ece1e5d8")
        // ...
    }
    
    func testEncodeAppHookConfigPatchRequest() throws {
        // WHEN
        let request = Paths.App.Hook.Config.PatchRequest(
            url: URL(string: "https://github/com"),
            contentType: "json",
            secret: "1234",
            insecureSSL: .double(1)
        )
    
        // THEN
        let data = try encoder.encode(request)
        
        // THEN
        let json = try XCTUnwrap(JSONSerialization.jsonObject(with: data, options: []) as? [String: Any])
        XCTAssertEqual(json["content_type"] as? String, "json")
        XCTAssertEqual(json["insecure_ssl"] as? Double, 1)
        XCTAssertEqual(json["secret"] as? String, "1234")
        XCTAssertEqual(json["url"] as? String, "https://github/com")
    }
    
    func testDecodeWebHookConfig() throws {
        // WHEN
        let config = try decoder.decode(WebhookConfig.self, from: json(named: "webhook-config"))
        
        // THEN
        XCTAssertEqual(config.contentType, "json")
        XCTAssertEqual(config.insecureSSL, .string("0"))
        XCTAssertEqual(config.secret, "********")
        XCTAssertEqual(config.url, URL(string: "https://example.com/webhook"))
    }
    
    func testDecodeWebhookDeliveries() throws {
        // WHEN
        let items = try decoder.decode([HookDeliveryItem].self, from: json(named: "app-hook-deliveries"))
        
        // THEN
        guard items.count == 2 else { return XCTFail() }
        
        do {
            let item = items[0]
            XCTAssertEqual(item.id, 12345678)
            XCTAssertEqual(item.guid, "0b989ba4-242f-11e5-81e1-c7b6966d2516")
            XCTAssertEqual(item.deliveredAt, formatter.date(from: "2019-06-03T00:57:16Z"))
            XCTAssertEqual(item.isRedelivery, false)
            XCTAssertEqual(item.duration, 0.27)
            XCTAssertEqual(item.status, "OK")
            XCTAssertEqual(item.statusCode, 200)
            XCTAssertEqual(item.event, "issues")
            XCTAssertEqual(item.action, "opened")
            XCTAssertEqual(item.installationID, 123)
            XCTAssertEqual(item.repositoryID, 456)
        }
    }
    
    func testDecodeInstallationToken() throws {
        // WHEN
        let token = try decoder.decode(InstallationToken.self, from: json(named: "installation-token"))
        
        // THEN
        XCTAssertEqual(token.token, "ghs_16C7e42F292c6912E7710c838347Ae178B4a")
        XCTAssertEqual(token.expiresAt, "2016-07-11T22:14:10Z")
        XCTAssertEqual(token.permissions?.issues, .write)
        XCTAssertEqual(token.permissions?.contents, .read)
    }
    
    func testDecodePublicUser() throws {
        // WHEN
        let user = try decoder.decode(PublicUser.self, from: json(named: "users-kean"))
        
        // THEN
        XCTAssertEqual(user.login, "kean")
        XCTAssertEqual(user.id, 1567433)
        XCTAssertEqual(user.nodeID, "MDQ6VXNlcjE1Njc0MzM=")
        XCTAssertEqual(user.avatarURL, URL(string: "https://avatars.githubusercontent.com/u/1567433?v=4"))
        XCTAssertEqual(user.gravatarID, "")
        XCTAssertEqual(user.url, URL(string: "https://api.github.com/users/kean"))
        XCTAssertEqual(user.htmlURL, URL(string: "https://github.com/kean"))
        XCTAssertEqual(user.followersURL, URL(string: "https://api.github.com/users/kean/followers"))
        XCTAssertEqual(user.followingURL, "https://api.github.com/users/kean/following{/other_user}")
        XCTAssertEqual(user.gistsURL, "https://api.github.com/users/kean/gists{/gist_id}")
        XCTAssertEqual(user.starredURL, "https://api.github.com/users/kean/starred{/owner}{/repo}")
        XCTAssertEqual(user.subscriptionsURL, URL(string: "https://api.github.com/users/kean/subscriptions"))
        XCTAssertEqual(user.type, "User")
        XCTAssertEqual(user.isSiteAdmin, false)
        XCTAssertEqual(user.name, "Alexander Grebenyuk")
        XCTAssertEqual(user.publicRepos, 34)
        XCTAssertEqual(user.createdAt, formatter.date(from: "2012-03-23T08:25:10Z"))
    }
    
    func testDecodeAuthorization() throws {
        // WHEN
        let auth = try decoder.decode(Authorization.self, from: json(named: "authorization"))
        
        // THEN
        XCTAssertEqual(auth.url, URL(string: "https://api.github.com/authorizations/1"))
        XCTAssertEqual(auth.id, 1)
        XCTAssertEqual(auth.scopes, ["public_repo", "user"])
        XCTAssertEqual(auth.app.name, "my github app")
        XCTAssertEqual(auth.user?.login, "octocat")
    }
        
    func testDecodeActionsEnteprisePermissions() throws {
        // WHEN
        let permissions = try decoder.decode(ActionsEnterprisePermissions.self, from: json(named: "actions-permissions"))
        
        // THEN
        XCTAssertEqual(permissions.enabledOrganizations, .all)
        XCTAssertEqual(permissions.allowedActions, .selected)
        XCTAssertEqual(permissions.selectedActionsURL, "https://api.github.com/enterprises/2/actions/permissions/selected-actions")
    }
    
    func testDecodeActionsPermissionsOrganizationsResponse() throws {
        // WHEN
        let response = try decoder.decode(Paths.Enterprises.WithEnterprise.Actions.Permissions.Organizations.GetResponse.self, from: json(named: "actions-permissions-organizations-response"))
        
        // THEN
        XCTAssertEqual(response.totalCount, 1)
        XCTAssertEqual(response.organizations.count, 1)
        XCTAssertEqual(response.organizations.first?.login, "octocat")
    }
    
    func testDecodeRunnersGroup() throws {
        // WHEN
        let response = try decoder.decode(Paths.Enterprises.WithEnterprise.Actions.RunnerGroups.GetResponse.self, from: json(named: "runners-enterprise-group"))
    
        // THEN
        XCTAssertEqual(response.totalCount, 3)
        guard response.runnerGroups.count == 3 else {
            return XCTFail()
        }
        do {
            let runner = response.runnerGroups[0]
            XCTAssertEqual(runner.id, 1)
            XCTAssertEqual(runner.name, "Default")
            XCTAssertEqual(runner.visibility, "all")
            XCTAssertEqual(runner.isDefault, true)
        }
    }
    
    // - oneOf (WebhookConfigInsecureSSL)
    // - nested types
    func testDecodeHook() throws {
        // WHEN
        let hook = try decoder.decode(Hook.self, from: json(named: "hook"))
        
        // THEN
        XCTAssertEqual(hook.type, "Repository")
        XCTAssertEqual(hook.id, 12345678)
        XCTAssertEqual(hook.name, "web")
        XCTAssertEqual(hook.isActive, true)
        XCTAssertEqual(hook.events, ["push", "pull_request"])
        XCTAssertEqual(hook.config.url, URL(string: "https://example.com/webhook"))
        switch try XCTUnwrap(hook.config.insecureSSL) {
        case .string(let value):
            XCTAssertEqual(value, "0")
        case .double:
            XCTFail()
        }
    }
    
    // - nested oneOf
    func testValidationError() throws {
        // WHEN
        let error = try decoder.decode(ValidationError.self, from: json(named: "validation-error"))
        
        // THEN
        XCTAssertEqual(error.message, "Validation Failed")
        XCTAssertEqual(error.documentationURL, "https://developer.github.com/v3/repos/#create")
        
        guard (error.errors?.count ?? 0) == 2 else {
            return XCTFail()
        }
        
        do {
            let error = error.errors![0]
            XCTAssertEqual(error.code, "custom")
            XCTAssertEqual(error.field, "name")
            XCTAssertEqual(error.resource, "Repository")
            let value = try XCTUnwrap(error.value)
            switch value {
            case .string: XCTFail()
            case .int: XCTFail()
            case .strings(let array):
                XCTAssertEqual(array, ["name"])
            }
        }
        do {
            let error = error.errors![1]
            XCTAssertEqual(error.code, "missing_field")
            XCTAssertEqual(error.field, "name")
            XCTAssertEqual(error.resource, "Repository")
        }
    }
    
    // - nested anyOf
    func testInstallation() throws {
        // WHEN
        let installation = try decoder.decode(Installation.self, from: json(named: "installation"))
        
        // THEN
        XCTAssertEqual(installation.id, 1)
        do {
            let user = try XCTUnwrap(installation.account?.simpleUser)
            XCTAssertEqual(user.login, "octocat")
            XCTAssertEqual(user.id, 1)
            XCTAssertEqual(user.isSiteAdmin, false)
        }
        XCTAssertNil(installation.account?.enterprise)
    }
    
    // - enums (and a bunch of other stuff)
    func testCodeScallingAlerts() throws {
        // WHEN
        let alerts = try decoder.decode([CodeScanningAlertItems].self, from: json(named: "code-scanning-alerts"))
        
        // THEN
        guard alerts.count == 2 else {
            return XCTFail()
        }
        
        do {
            let alert = alerts[0]
            XCTAssertEqual(alert.number, 4)
            XCTAssertEqual(alert.createdAt, formatter.date(from: "2020-02-13T12:29:18Z"))
            XCTAssertNil(alert.dismissedBy)
            XCTAssertNil(alert.dismissedReason)
            XCTAssertEqual(alert.mostRecentInstance.location?.startLine, 917)
            XCTAssertEqual(alert.mostRecentInstance.message?.text, "This path depends on a user-provided value.")
        }
        
        do {
            let alert = alerts[1]
            XCTAssertEqual(alert.number, 3)
            XCTAssertEqual(alert.createdAt, formatter.date(from: "2020-02-13T12:29:18Z"))
            XCTAssertEqual(alert.dismissedBy?.login, "octocat")
            XCTAssertEqual(alert.dismissedReason, .falsePositive)
            XCTAssertEqual(alert.mostRecentInstance.location?.startLine, 917)
            XCTAssertEqual(alert.mostRecentInstance.message?.text, "This path depends on a user-provided value.")
        }
    }
    
    // - AnyJSON (fragements)
    // - additionalProperties
    func testBaseGist() throws {
        // WHEN
        let gist = try decoder.decode(BaseGist.self, from: json(named: "base-gist"))
        
        // THEN
        XCTAssertEqual(gist.url, URL(string: "https://api.github.com/gists/aa5a315d61ae9438b18d"))
        
        let forks = (gist.forks ?? []).compactMap { $0.value as? String }
        XCTAssertEqual(forks, ["https://api.github.com/gists/a5315d61ae9438b123123d", "https://api.github.com/gists/a5315d61ae9438b123dksk"])
        
        let file = try XCTUnwrap(gist.files["hello_world.rb"])
        XCTAssertEqual(file.type, "application/x-ruby")
        XCTAssertEqual(file.filename, "hello_world.rb")
    }
    
    func testIssue() throws {
        // WHEN
        let issue = try decoder.decode(Issue.self, from: json(named: "issue"))
        
        // THEN
        XCTAssertEqual(issue.id, 1)
        XCTAssertEqual(issue.authorAssociation, .collaborator)
     
        guard issue.labels.count == 1 else {
            return XCTFail()
        }
        
        let label = issue.labels[0]
        switch label {
        case .string: XCTFail()
        case .object(let label):
            XCTAssertEqual(label.id, 208045946)
            XCTAssertEqual(label.nodeID, "MDU6TGFiZWwyMDgwNDU5NDY=")
            XCTAssertEqual(label.url, URL(string: "https://api.github.com/repos/octocat/Hello-World/labels/bug"))
            XCTAssertEqual(label.name, "bug")
            XCTAssertEqual(label.description, "Something isn't working")
            XCTAssertEqual(label.color, "f29513")
            XCTAssertEqual(label.isDefault, true)
        }
    }
    
    // - oneOf with multiple nested ojects
    func testEnvironment() throws {
        // WHEN
        let env = try decoder.decode(Environment.self, from: json(named: "environment"))
        
        // THEN
        XCTAssertEqual(env.id, 161088068)
        
        let protectionRules = try XCTUnwrap(env.protectionRules)
        guard protectionRules.count == 3 else {
            return XCTFail()
        }
        
        do {
            let rule = try XCTUnwrap(protectionRules[0].object1)
            XCTAssertEqual(rule.id, 3736)
            XCTAssertEqual(rule.nodeID, "MDQ6R2F0ZTM3MzY=")
            XCTAssertEqual(rule.type, "wait_timer")
            XCTAssertEqual(rule.waitTimer, 30)
        }
        
        do {
            let rule = try XCTUnwrap(protectionRules[1].object2)
            XCTAssertEqual(rule.id, 3755)
            XCTAssertEqual(rule.nodeID, "MDQ6R2F0ZTM3NTU=")
            XCTAssertEqual(rule.type, "required_reviewers")
            
            let reviewers = try XCTUnwrap(rule.reviewers)
            guard reviewers.count == 2 else {
                return XCTFail()
            }
            
            XCTAssertEqual(reviewers[0].type, .user)
            let user = try XCTUnwrap(reviewers[0].reviewer?.simpleUser)
            XCTAssertEqual(user.id, 1)
            XCTAssertEqual(user.login, "octocat")
            
            XCTAssertEqual(reviewers[1].type, .team)
            let team = try XCTUnwrap(reviewers[1].reviewer?.team)
            XCTAssertEqual(team.id, 1)
            XCTAssertEqual(team.name, "Justice League")
        }

        do {
            let rule = try XCTUnwrap(protectionRules[2].object3)
            XCTAssertEqual(rule.id, 3756)
            XCTAssertEqual(rule.nodeID, "MDQ6R2F0ZTM3NTY=")
            XCTAssertEqual(rule.type, "branch_policy")
        }
    }
}

private let formatter = ISO8601DateFormatter()
