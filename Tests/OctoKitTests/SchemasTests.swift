// The MIT License (MIT)
//
// Copyright (c) 2021 Alexander Grebenyuk (github.com/kean).

import XCTest
import Mocker
@testable import APIClient
@testable import OctoKit

final class SchemasTests: XCTestCase {
    var decoder: JSONDecoder!
    
    override func setUp() {
        super.setUp()
        
        decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
    }
    
    func testPublicUser() throws {
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
        XCTAssertEqual(user.siteAdmin, false)
        XCTAssertEqual(user.name, "Alexander Grebenyuk")
        XCTAssertEqual(user.publicRepos, 34)
        XCTAssertEqual(user.createdAt, formatter.date(from: "2012-03-23T08:25:10Z"))
    }
    
    // Tests
    // - oneOf (WebhookConfigInsecureSSL)
    // - nested types
    func testHook() throws {
        // WHEN
        let hook = try decoder.decode(Hook.self, from: json(named: "hook"))
        
        // THEN
        XCTAssertEqual(hook.type, "Repository")
        XCTAssertEqual(hook.id, 12345678)
        XCTAssertEqual(hook.name, "web")
        XCTAssertEqual(hook.active, true)
        XCTAssertEqual(hook.events, ["push", "pull_request"])
        XCTAssertEqual(hook.config.url, URL(string: "https://example.com/webhook"))
        switch try XCTUnwrap(hook.config.insecureSSL) {
        case .string(let value):
            XCTAssertEqual(value, "0")
        case .double:
            XCTFail()
        }
    }
    
    // Tests:
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
}

private let formatter = ISO8601DateFormatter()
