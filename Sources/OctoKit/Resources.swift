import Foundation
import APIClient

public struct Resources {}

extension Resources {
    public static var app: App {
        App(path: "/app")
    }
    
    public struct App {
        // /app
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var appManifests: AppManifests {
        AppManifests(path: "/app-manifests")
    }
    
    public struct AppManifests {
        // /app-manifests
        public let path: String
    }
}

extension Resources.AppManifests {
    public func code(_ code: String) -> WithCode {
        WithCode(path: path + "/" + code)
    }

    public struct WithCode {
        // /app-manifests/{code}
        public let path: String
    }
}

extension Resources.AppManifests.WithCode {
    public var conversions: Conversions {
        Conversions(path: path + "/conversions")
    }
    
    public struct Conversions {
        // /app-manifests/{code}/conversions
        public let path: String


    }
}

extension Resources.App {
    public var hook: Hook {
        Hook(path: path + "/hook")
    }
    
    public struct Hook {
        // /app/hook
        public let path: String
    }
}

extension Resources.App.Hook {
    public var config: Config {
        Config(path: path + "/config")
    }
    
    public struct Config {
        // /app/hook/config
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.App.Hook {
    public var deliveries: Deliveries {
        Deliveries(path: path + "/deliveries")
    }
    
    public struct Deliveries {
        // /app/hook/deliveries
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.App.Hook.Deliveries {
    public func deliveryID(_ deliveryID: String) -> WithDeliveryID {
        WithDeliveryID(path: path + "/" + deliveryID)
    }

    public struct WithDeliveryID {
        // /app/hook/deliveries/{delivery_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.App.Hook.Deliveries.WithDeliveryID {
    public var attempts: Attempts {
        Attempts(path: path + "/attempts")
    }
    
    public struct Attempts {
        // /app/hook/deliveries/{delivery_id}/attempts
        public let path: String


    }
}

extension Resources.App {
    public var installations: Installations {
        Installations(path: path + "/installations")
    }
    
    public struct Installations {
        // /app/installations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.App.Installations {
    public func installationID(_ installationID: String) -> WithInstallationID {
        WithInstallationID(path: path + "/" + installationID)
    }

    public struct WithInstallationID {
        // /app/installations/{installation_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.App.Installations.WithInstallationID {
    public var accessTokens: AccessTokens {
        AccessTokens(path: path + "/access_tokens")
    }
    
    public struct AccessTokens {
        // /app/installations/{installation_id}/access_tokens
        public let path: String


    }
}

extension Resources.App.Installations.WithInstallationID {
    public var suspended: Suspended {
        Suspended(path: path + "/suspended")
    }
    
    public struct Suspended {
        // /app/installations/{installation_id}/suspended
        public let path: String


    }
}

extension Resources {
    public static var applications: Applications {
        Applications(path: "/applications")
    }
    
    public struct Applications {
        // /applications
        public let path: String
    }
}

extension Resources.Applications {
    public var grants: Grants {
        Grants(path: path + "/grants")
    }
    
    public struct Grants {
        // /applications/grants
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Applications.Grants {
    public func grantID(_ grantID: String) -> WithGrantID {
        WithGrantID(path: path + "/" + grantID)
    }

    public struct WithGrantID {
        // /applications/grants/{grant_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Applications {
    public func clientID(_ clientID: String) -> WithClientID {
        WithClientID(path: path + "/" + clientID)
    }

    public struct WithClientID {
        // /applications/{client_id}
        public let path: String
    }
}

extension Resources.Applications.WithClientID {
    public var grant: Grant {
        Grant(path: path + "/grant")
    }
    
    public struct Grant {
        // /applications/{client_id}/grant
        public let path: String


    }
}

extension Resources.Applications.WithClientID {
    public var token: Token {
        Token(path: path + "/token")
    }
    
    public struct Token {
        // /applications/{client_id}/token
        public let path: String


    }
}

extension Resources.Applications.WithClientID.Token {
    public var scoped: Scoped {
        Scoped(path: path + "/scoped")
    }
    
    public struct Scoped {
        // /applications/{client_id}/token/scoped
        public let path: String


    }
}

extension Resources {
    public static var apps: Apps {
        Apps(path: "/apps")
    }
    
    public struct Apps {
        // /apps
        public let path: String
    }
}

extension Resources.Apps {
    public func appSlug(_ appSlug: String) -> WithAppSlug {
        WithAppSlug(path: path + "/" + appSlug)
    }

    public struct WithAppSlug {
        // /apps/{app_slug}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var authorizations: Authorizations {
        Authorizations(path: "/authorizations")
    }
    
    public struct Authorizations {
        // /authorizations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Authorizations {
    public var clients: Clients {
        Clients(path: path + "/clients")
    }
    
    public struct Clients {
        // /authorizations/clients
        public let path: String
    }
}

extension Resources.Authorizations.Clients {
    public func clientID(_ clientID: String) -> WithClientID {
        WithClientID(path: path + "/" + clientID)
    }

    public struct WithClientID {
        // /authorizations/clients/{client_id}
        public let path: String


    }
}

extension Resources.Authorizations.Clients.WithClientID {
    public func fingerprint(_ fingerprint: String) -> WithFingerprint {
        WithFingerprint(path: path + "/" + fingerprint)
    }

    public struct WithFingerprint {
        // /authorizations/clients/{client_id}/{fingerprint}
        public let path: String


    }
}

extension Resources.Authorizations {
    public func authorizationID(_ authorizationID: String) -> WithAuthorizationID {
        WithAuthorizationID(path: path + "/" + authorizationID)
    }

    public struct WithAuthorizationID {
        // /authorizations/{authorization_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var codesOfConduct: CodesOfConduct {
        CodesOfConduct(path: "/codes_of_conduct")
    }
    
    public struct CodesOfConduct {
        // /codes_of_conduct
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.CodesOfConduct {
    public func key(_ key: String) -> WithKey {
        WithKey(path: path + "/" + key)
    }

    public struct WithKey {
        // /codes_of_conduct/{key}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var emojis: Emojis {
        Emojis(path: "/emojis")
    }
    
    public struct Emojis {
        // /emojis
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var enterprises: Enterprises {
        Enterprises(path: "/enterprises")
    }
    
    public struct Enterprises {
        // /enterprises
        public let path: String
    }
}

extension Resources.Enterprises {
    public func enterprise(_ enterprise: String) -> WithEnterprise {
        WithEnterprise(path: path + "/" + enterprise)
    }

    public struct WithEnterprise {
        // /enterprises/{enterprise}
        public let path: String
    }
}

extension Resources.Enterprises.WithEnterprise {
    public var actions: Actions {
        Actions(path: path + "/actions")
    }
    
    public struct Actions {
        // /enterprises/{enterprise}/actions
        public let path: String
    }
}

extension Resources.Enterprises.WithEnterprise.Actions {
    public var permissions: Permissions {
        Permissions(path: path + "/permissions")
    }
    
    public struct Permissions {
        // /enterprises/{enterprise}/actions/permissions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Enterprises.WithEnterprise.Actions.Permissions {
    public var organizations: Organizations {
        Organizations(path: path + "/organizations")
    }
    
    public struct Organizations {
        // /enterprises/{enterprise}/actions/permissions/organizations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Enterprises.WithEnterprise.Actions.Permissions.Organizations {
    public func orgID(_ orgID: String) -> WithOrgID {
        WithOrgID(path: path + "/" + orgID)
    }

    public struct WithOrgID {
        // /enterprises/{enterprise}/actions/permissions/organizations/{org_id}
        public let path: String


    }
}

extension Resources.Enterprises.WithEnterprise.Actions.Permissions {
    public var selectedActions: SelectedActions {
        SelectedActions(path: path + "/selected-actions")
    }
    
    public struct SelectedActions {
        // /enterprises/{enterprise}/actions/permissions/selected-actions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Enterprises.WithEnterprise.Actions {
    public var runnerGroups: RunnerGroups {
        RunnerGroups(path: path + "/runner-groups")
    }
    
    public struct RunnerGroups {
        // /enterprises/{enterprise}/actions/runner-groups
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Enterprises.WithEnterprise.Actions.RunnerGroups {
    public func runnerGroupID(_ runnerGroupID: String) -> WithRunnerGroupID {
        WithRunnerGroupID(path: path + "/" + runnerGroupID)
    }

    public struct WithRunnerGroupID {
        // /enterprises/{enterprise}/actions/runner-groups/{runner_group_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Enterprises.WithEnterprise.Actions.RunnerGroups.WithRunnerGroupID {
    public var organizations: Organizations {
        Organizations(path: path + "/organizations")
    }
    
    public struct Organizations {
        // /enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Enterprises.WithEnterprise.Actions.RunnerGroups.WithRunnerGroupID.Organizations {
    public func orgID(_ orgID: String) -> WithOrgID {
        WithOrgID(path: path + "/" + orgID)
    }

    public struct WithOrgID {
        // /enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations/{org_id}
        public let path: String


    }
}

extension Resources.Enterprises.WithEnterprise.Actions.RunnerGroups.WithRunnerGroupID {
    public var runners: Runners {
        Runners(path: path + "/runners")
    }
    
    public struct Runners {
        // /enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/runners
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Enterprises.WithEnterprise.Actions.RunnerGroups.WithRunnerGroupID.Runners {
    public func runnerID(_ runnerID: String) -> WithRunnerID {
        WithRunnerID(path: path + "/" + runnerID)
    }

    public struct WithRunnerID {
        // /enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/runners/{runner_id}
        public let path: String


    }
}

extension Resources.Enterprises.WithEnterprise.Actions {
    public var runners: Runners {
        Runners(path: path + "/runners")
    }
    
    public struct Runners {
        // /enterprises/{enterprise}/actions/runners
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Enterprises.WithEnterprise.Actions.Runners {
    public var downloads: Downloads {
        Downloads(path: path + "/downloads")
    }
    
    public struct Downloads {
        // /enterprises/{enterprise}/actions/runners/downloads
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Enterprises.WithEnterprise.Actions.Runners {
    public var registrationToken: RegistrationToken {
        RegistrationToken(path: path + "/registration-token")
    }
    
    public struct RegistrationToken {
        // /enterprises/{enterprise}/actions/runners/registration-token
        public let path: String


    }
}

extension Resources.Enterprises.WithEnterprise.Actions.Runners {
    public var removeToken: RemoveToken {
        RemoveToken(path: path + "/remove-token")
    }
    
    public struct RemoveToken {
        // /enterprises/{enterprise}/actions/runners/remove-token
        public let path: String


    }
}

extension Resources.Enterprises.WithEnterprise.Actions.Runners {
    public func runnerID(_ runnerID: String) -> WithRunnerID {
        WithRunnerID(path: path + "/" + runnerID)
    }

    public struct WithRunnerID {
        // /enterprises/{enterprise}/actions/runners/{runner_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Enterprises.WithEnterprise {
    public var auditLog: AuditLog {
        AuditLog(path: path + "/audit-log")
    }
    
    public struct AuditLog {
        // /enterprises/{enterprise}/audit-log
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Enterprises.WithEnterprise {
    public var settings: Settings {
        Settings(path: path + "/settings")
    }
    
    public struct Settings {
        // /enterprises/{enterprise}/settings
        public let path: String
    }
}

extension Resources.Enterprises.WithEnterprise.Settings {
    public var billing: Billing {
        Billing(path: path + "/billing")
    }
    
    public struct Billing {
        // /enterprises/{enterprise}/settings/billing
        public let path: String
    }
}

extension Resources.Enterprises.WithEnterprise.Settings.Billing {
    public var actions: Actions {
        Actions(path: path + "/actions")
    }
    
    public struct Actions {
        // /enterprises/{enterprise}/settings/billing/actions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Enterprises.WithEnterprise.Settings.Billing {
    public var advancedSecurity: AdvancedSecurity {
        AdvancedSecurity(path: path + "/advanced-security")
    }
    
    public struct AdvancedSecurity {
        // /enterprises/{enterprise}/settings/billing/advanced-security
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Enterprises.WithEnterprise.Settings.Billing {
    public var packages: Packages {
        Packages(path: path + "/packages")
    }
    
    public struct Packages {
        // /enterprises/{enterprise}/settings/billing/packages
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Enterprises.WithEnterprise.Settings.Billing {
    public var sharedStorage: SharedStorage {
        SharedStorage(path: path + "/shared-storage")
    }
    
    public struct SharedStorage {
        // /enterprises/{enterprise}/settings/billing/shared-storage
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var events: Events {
        Events(path: "/events")
    }
    
    public struct Events {
        // /events
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var feeds: Feeds {
        Feeds(path: "/feeds")
    }
    
    public struct Feeds {
        // /feeds
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var gists: Gists {
        Gists(path: "/gists")
    }
    
    public struct Gists {
        // /gists
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Gists {
    public var `public`: Public {
        Public(path: path + "/public")
    }
    
    public struct Public {
        // /gists/public
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Gists {
    public var starred: Starred {
        Starred(path: path + "/starred")
    }
    
    public struct Starred {
        // /gists/starred
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Gists {
    public func gistID(_ gistID: String) -> WithGistID {
        WithGistID(path: path + "/" + gistID)
    }

    public struct WithGistID {
        // /gists/{gist_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Gists.WithGistID {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }
    
    public struct Comments {
        // /gists/{gist_id}/comments
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Gists.WithGistID.Comments {
    public func commentID(_ commentID: String) -> WithCommentID {
        WithCommentID(path: path + "/" + commentID)
    }

    public struct WithCommentID {
        // /gists/{gist_id}/comments/{comment_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Gists.WithGistID {
    public var commits: Commits {
        Commits(path: path + "/commits")
    }
    
    public struct Commits {
        // /gists/{gist_id}/commits
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Gists.WithGistID {
    public var forks: Forks {
        Forks(path: path + "/forks")
    }
    
    public struct Forks {
        // /gists/{gist_id}/forks
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Gists.WithGistID {
    public var star: Star {
        Star(path: path + "/star")
    }
    
    public struct Star {
        // /gists/{gist_id}/star
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Gists.WithGistID {
    public func sha(_ sha: String) -> WithSha {
        WithSha(path: path + "/" + sha)
    }

    public struct WithSha {
        // /gists/{gist_id}/{sha}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var gitignore: Gitignore {
        Gitignore(path: "/gitignore")
    }
    
    public struct Gitignore {
        // /gitignore
        public let path: String
    }
}

extension Resources.Gitignore {
    public var templates: Templates {
        Templates(path: path + "/templates")
    }
    
    public struct Templates {
        // /gitignore/templates
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Gitignore.Templates {
    public func name(_ name: String) -> WithName {
        WithName(path: path + "/" + name)
    }

    public struct WithName {
        // /gitignore/templates/{name}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var installation: Installation {
        Installation(path: "/installation")
    }
    
    public struct Installation {
        // /installation
        public let path: String
    }
}

extension Resources.Installation {
    public var repositories: Repositories {
        Repositories(path: path + "/repositories")
    }
    
    public struct Repositories {
        // /installation/repositories
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Installation {
    public var token: Token {
        Token(path: path + "/token")
    }
    
    public struct Token {
        // /installation/token
        public let path: String


    }
}

extension Resources {
    public static var issues: Issues {
        Issues(path: "/issues")
    }
    
    public struct Issues {
        // /issues
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var licenses: Licenses {
        Licenses(path: "/licenses")
    }
    
    public struct Licenses {
        // /licenses
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Licenses {
    public func license(_ license: String) -> WithLicense {
        WithLicense(path: path + "/" + license)
    }

    public struct WithLicense {
        // /licenses/{license}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var markdown: Markdown {
        Markdown(path: "/markdown")
    }
    
    public struct Markdown {
        // /markdown
        public let path: String


    }
}

extension Resources.Markdown {
    public var raw: Raw {
        Raw(path: path + "/raw")
    }
    
    public struct Raw {
        // /markdown/raw
        public let path: String


    }
}

extension Resources {
    public static var marketplaceListing: MarketplaceListing {
        MarketplaceListing(path: "/marketplace_listing")
    }
    
    public struct MarketplaceListing {
        // /marketplace_listing
        public let path: String
    }
}

extension Resources.MarketplaceListing {
    public var accounts: Accounts {
        Accounts(path: path + "/accounts")
    }
    
    public struct Accounts {
        // /marketplace_listing/accounts
        public let path: String
    }
}

extension Resources.MarketplaceListing.Accounts {
    public func accountID(_ accountID: String) -> WithAccountID {
        WithAccountID(path: path + "/" + accountID)
    }

    public struct WithAccountID {
        // /marketplace_listing/accounts/{account_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.MarketplaceListing {
    public var plans: Plans {
        Plans(path: path + "/plans")
    }
    
    public struct Plans {
        // /marketplace_listing/plans
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.MarketplaceListing.Plans {
    public func planID(_ planID: String) -> WithPlanID {
        WithPlanID(path: path + "/" + planID)
    }

    public struct WithPlanID {
        // /marketplace_listing/plans/{plan_id}
        public let path: String
    }
}

extension Resources.MarketplaceListing.Plans.WithPlanID {
    public var accounts: Accounts {
        Accounts(path: path + "/accounts")
    }
    
    public struct Accounts {
        // /marketplace_listing/plans/{plan_id}/accounts
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.MarketplaceListing {
    public var stubbed: Stubbed {
        Stubbed(path: path + "/stubbed")
    }
    
    public struct Stubbed {
        // /marketplace_listing/stubbed
        public let path: String
    }
}

extension Resources.MarketplaceListing.Stubbed {
    public var accounts: Accounts {
        Accounts(path: path + "/accounts")
    }
    
    public struct Accounts {
        // /marketplace_listing/stubbed/accounts
        public let path: String
    }
}

extension Resources.MarketplaceListing.Stubbed.Accounts {
    public func accountID(_ accountID: String) -> WithAccountID {
        WithAccountID(path: path + "/" + accountID)
    }

    public struct WithAccountID {
        // /marketplace_listing/stubbed/accounts/{account_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.MarketplaceListing.Stubbed {
    public var plans: Plans {
        Plans(path: path + "/plans")
    }
    
    public struct Plans {
        // /marketplace_listing/stubbed/plans
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.MarketplaceListing.Stubbed.Plans {
    public func planID(_ planID: String) -> WithPlanID {
        WithPlanID(path: path + "/" + planID)
    }

    public struct WithPlanID {
        // /marketplace_listing/stubbed/plans/{plan_id}
        public let path: String
    }
}

extension Resources.MarketplaceListing.Stubbed.Plans.WithPlanID {
    public var accounts: Accounts {
        Accounts(path: path + "/accounts")
    }
    
    public struct Accounts {
        // /marketplace_listing/stubbed/plans/{plan_id}/accounts
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var meta: Meta {
        Meta(path: "/meta")
    }
    
    public struct Meta {
        // /meta
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var networks: Networks {
        Networks(path: "/networks")
    }
    
    public struct Networks {
        // /networks
        public let path: String
    }
}

extension Resources.Networks {
    public func owner(_ owner: String) -> WithOwner {
        WithOwner(path: path + "/" + owner)
    }

    public struct WithOwner {
        // /networks/{owner}
        public let path: String
    }
}

extension Resources.Networks.WithOwner {
    public func repo(_ repo: String) -> WithRepo {
        WithRepo(path: path + "/" + repo)
    }

    public struct WithRepo {
        // /networks/{owner}/{repo}
        public let path: String
    }
}

extension Resources.Networks.WithOwner.WithRepo {
    public var events: Events {
        Events(path: path + "/events")
    }
    
    public struct Events {
        // /networks/{owner}/{repo}/events
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var notifications: Notifications {
        Notifications(path: "/notifications")
    }
    
    public struct Notifications {
        // /notifications
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Notifications {
    public var threads: Threads {
        Threads(path: path + "/threads")
    }
    
    public struct Threads {
        // /notifications/threads
        public let path: String
    }
}

extension Resources.Notifications.Threads {
    public func threadID(_ threadID: String) -> WithThreadID {
        WithThreadID(path: path + "/" + threadID)
    }

    public struct WithThreadID {
        // /notifications/threads/{thread_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Notifications.Threads.WithThreadID {
    public var subscription: Subscription {
        Subscription(path: path + "/subscription")
    }
    
    public struct Subscription {
        // /notifications/threads/{thread_id}/subscription
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var octocat: Octocat {
        Octocat(path: "/octocat")
    }
    
    public struct Octocat {
        // /octocat
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var organizations: Organizations {
        Organizations(path: "/organizations")
    }
    
    public struct Organizations {
        // /organizations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Organizations {
    public func organizationID(_ organizationID: String) -> WithOrganizationID {
        WithOrganizationID(path: path + "/" + organizationID)
    }

    public struct WithOrganizationID {
        // /organizations/{organization_id}
        public let path: String
    }
}

extension Resources.Organizations.WithOrganizationID {
    public var customRoles: CustomRoles {
        CustomRoles(path: path + "/custom_roles")
    }
    
    public struct CustomRoles {
        // /organizations/{organization_id}/custom_roles
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var orgs: Orgs {
        Orgs(path: "/orgs")
    }
    
    public struct Orgs {
        // /orgs
        public let path: String
    }
}

extension Resources.Orgs {
    public func org(_ org: String) -> WithOrg {
        WithOrg(path: path + "/" + org)
    }

    public struct WithOrg {
        // /orgs/{org}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var actions: Actions {
        Actions(path: path + "/actions")
    }
    
    public struct Actions {
        // /orgs/{org}/actions
        public let path: String
    }
}

extension Resources.Orgs.WithOrg.Actions {
    public var permissions: Permissions {
        Permissions(path: path + "/permissions")
    }
    
    public struct Permissions {
        // /orgs/{org}/actions/permissions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Actions.Permissions {
    public var repositories: Repositories {
        Repositories(path: path + "/repositories")
    }
    
    public struct Repositories {
        // /orgs/{org}/actions/permissions/repositories
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Actions.Permissions.Repositories {
    public func repositoryID(_ repositoryID: String) -> WithRepositoryID {
        WithRepositoryID(path: path + "/" + repositoryID)
    }

    public struct WithRepositoryID {
        // /orgs/{org}/actions/permissions/repositories/{repository_id}
        public let path: String


    }
}

extension Resources.Orgs.WithOrg.Actions.Permissions {
    public var selectedActions: SelectedActions {
        SelectedActions(path: path + "/selected-actions")
    }
    
    public struct SelectedActions {
        // /orgs/{org}/actions/permissions/selected-actions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Actions {
    public var runnerGroups: RunnerGroups {
        RunnerGroups(path: path + "/runner-groups")
    }
    
    public struct RunnerGroups {
        // /orgs/{org}/actions/runner-groups
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Actions.RunnerGroups {
    public func runnerGroupID(_ runnerGroupID: String) -> WithRunnerGroupID {
        WithRunnerGroupID(path: path + "/" + runnerGroupID)
    }

    public struct WithRunnerGroupID {
        // /orgs/{org}/actions/runner-groups/{runner_group_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Actions.RunnerGroups.WithRunnerGroupID {
    public var repositories: Repositories {
        Repositories(path: path + "/repositories")
    }
    
    public struct Repositories {
        // /orgs/{org}/actions/runner-groups/{runner_group_id}/repositories
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Actions.RunnerGroups.WithRunnerGroupID.Repositories {
    public func repositoryID(_ repositoryID: String) -> WithRepositoryID {
        WithRepositoryID(path: path + "/" + repositoryID)
    }

    public struct WithRepositoryID {
        // /orgs/{org}/actions/runner-groups/{runner_group_id}/repositories/{repository_id}
        public let path: String


    }
}

extension Resources.Orgs.WithOrg.Actions.RunnerGroups.WithRunnerGroupID {
    public var runners: Runners {
        Runners(path: path + "/runners")
    }
    
    public struct Runners {
        // /orgs/{org}/actions/runner-groups/{runner_group_id}/runners
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Actions.RunnerGroups.WithRunnerGroupID.Runners {
    public func runnerID(_ runnerID: String) -> WithRunnerID {
        WithRunnerID(path: path + "/" + runnerID)
    }

    public struct WithRunnerID {
        // /orgs/{org}/actions/runner-groups/{runner_group_id}/runners/{runner_id}
        public let path: String


    }
}

extension Resources.Orgs.WithOrg.Actions {
    public var runners: Runners {
        Runners(path: path + "/runners")
    }
    
    public struct Runners {
        // /orgs/{org}/actions/runners
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Actions.Runners {
    public var downloads: Downloads {
        Downloads(path: path + "/downloads")
    }
    
    public struct Downloads {
        // /orgs/{org}/actions/runners/downloads
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Actions.Runners {
    public var registrationToken: RegistrationToken {
        RegistrationToken(path: path + "/registration-token")
    }
    
    public struct RegistrationToken {
        // /orgs/{org}/actions/runners/registration-token
        public let path: String


    }
}

extension Resources.Orgs.WithOrg.Actions.Runners {
    public var removeToken: RemoveToken {
        RemoveToken(path: path + "/remove-token")
    }
    
    public struct RemoveToken {
        // /orgs/{org}/actions/runners/remove-token
        public let path: String


    }
}

extension Resources.Orgs.WithOrg.Actions.Runners {
    public func runnerID(_ runnerID: String) -> WithRunnerID {
        WithRunnerID(path: path + "/" + runnerID)
    }

    public struct WithRunnerID {
        // /orgs/{org}/actions/runners/{runner_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Actions {
    public var secrets: Secrets {
        Secrets(path: path + "/secrets")
    }
    
    public struct Secrets {
        // /orgs/{org}/actions/secrets
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Actions.Secrets {
    public var publicKey: PublicKey {
        PublicKey(path: path + "/public-key")
    }
    
    public struct PublicKey {
        // /orgs/{org}/actions/secrets/public-key
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Actions.Secrets {
    public func secretName(_ secretName: String) -> WithSecretName {
        WithSecretName(path: path + "/" + secretName)
    }

    public struct WithSecretName {
        // /orgs/{org}/actions/secrets/{secret_name}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Actions.Secrets.WithSecretName {
    public var repositories: Repositories {
        Repositories(path: path + "/repositories")
    }
    
    public struct Repositories {
        // /orgs/{org}/actions/secrets/{secret_name}/repositories
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Actions.Secrets.WithSecretName.Repositories {
    public func repositoryID(_ repositoryID: String) -> WithRepositoryID {
        WithRepositoryID(path: path + "/" + repositoryID)
    }

    public struct WithRepositoryID {
        // /orgs/{org}/actions/secrets/{secret_name}/repositories/{repository_id}
        public let path: String


    }
}

extension Resources.Orgs.WithOrg {
    public var auditLog: AuditLog {
        AuditLog(path: path + "/audit-log")
    }
    
    public struct AuditLog {
        // /orgs/{org}/audit-log
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var blocks: Blocks {
        Blocks(path: path + "/blocks")
    }
    
    public struct Blocks {
        // /orgs/{org}/blocks
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Blocks {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: path + "/" + username)
    }

    public struct WithUsername {
        // /orgs/{org}/blocks/{username}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var credentialAuthorizations: CredentialAuthorizations {
        CredentialAuthorizations(path: path + "/credential-authorizations")
    }
    
    public struct CredentialAuthorizations {
        // /orgs/{org}/credential-authorizations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.CredentialAuthorizations {
    public func credentialID(_ credentialID: String) -> WithCredentialID {
        WithCredentialID(path: path + "/" + credentialID)
    }

    public struct WithCredentialID {
        // /orgs/{org}/credential-authorizations/{credential_id}
        public let path: String


    }
}

extension Resources.Orgs.WithOrg {
    public var events: Events {
        Events(path: path + "/events")
    }
    
    public struct Events {
        // /orgs/{org}/events
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var externalGroup: ExternalGroup {
        ExternalGroup(path: path + "/external-group")
    }
    
    public struct ExternalGroup {
        // /orgs/{org}/external-group
        public let path: String
    }
}

extension Resources.Orgs.WithOrg.ExternalGroup {
    public func groupID(_ groupID: String) -> WithGroupID {
        WithGroupID(path: path + "/" + groupID)
    }

    public struct WithGroupID {
        // /orgs/{org}/external-group/{group_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var externalGroups: ExternalGroups {
        ExternalGroups(path: path + "/external-groups")
    }
    
    public struct ExternalGroups {
        // /orgs/{org}/external-groups
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var failedInvitations: FailedInvitations {
        FailedInvitations(path: path + "/failed_invitations")
    }
    
    public struct FailedInvitations {
        // /orgs/{org}/failed_invitations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var hooks: Hooks {
        Hooks(path: path + "/hooks")
    }
    
    public struct Hooks {
        // /orgs/{org}/hooks
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Hooks {
    public func hookID(_ hookID: String) -> WithHookID {
        WithHookID(path: path + "/" + hookID)
    }

    public struct WithHookID {
        // /orgs/{org}/hooks/{hook_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Hooks.WithHookID {
    public var config: Config {
        Config(path: path + "/config")
    }
    
    public struct Config {
        // /orgs/{org}/hooks/{hook_id}/config
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Hooks.WithHookID {
    public var deliveries: Deliveries {
        Deliveries(path: path + "/deliveries")
    }
    
    public struct Deliveries {
        // /orgs/{org}/hooks/{hook_id}/deliveries
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Hooks.WithHookID.Deliveries {
    public func deliveryID(_ deliveryID: String) -> WithDeliveryID {
        WithDeliveryID(path: path + "/" + deliveryID)
    }

    public struct WithDeliveryID {
        // /orgs/{org}/hooks/{hook_id}/deliveries/{delivery_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Hooks.WithHookID.Deliveries.WithDeliveryID {
    public var attempts: Attempts {
        Attempts(path: path + "/attempts")
    }
    
    public struct Attempts {
        // /orgs/{org}/hooks/{hook_id}/deliveries/{delivery_id}/attempts
        public let path: String


    }
}

extension Resources.Orgs.WithOrg.Hooks.WithHookID {
    public var pings: Pings {
        Pings(path: path + "/pings")
    }
    
    public struct Pings {
        // /orgs/{org}/hooks/{hook_id}/pings
        public let path: String


    }
}

extension Resources.Orgs.WithOrg {
    public var installation: Installation {
        Installation(path: path + "/installation")
    }
    
    public struct Installation {
        // /orgs/{org}/installation
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var installations: Installations {
        Installations(path: path + "/installations")
    }
    
    public struct Installations {
        // /orgs/{org}/installations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var interactionLimits: InteractionLimits {
        InteractionLimits(path: path + "/interaction-limits")
    }
    
    public struct InteractionLimits {
        // /orgs/{org}/interaction-limits
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var invitations: Invitations {
        Invitations(path: path + "/invitations")
    }
    
    public struct Invitations {
        // /orgs/{org}/invitations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Invitations {
    public func invitationID(_ invitationID: String) -> WithInvitationID {
        WithInvitationID(path: path + "/" + invitationID)
    }

    public struct WithInvitationID {
        // /orgs/{org}/invitations/{invitation_id}
        public let path: String


    }
}

extension Resources.Orgs.WithOrg.Invitations.WithInvitationID {
    public var teams: Teams {
        Teams(path: path + "/teams")
    }
    
    public struct Teams {
        // /orgs/{org}/invitations/{invitation_id}/teams
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var issues: Issues {
        Issues(path: path + "/issues")
    }
    
    public struct Issues {
        // /orgs/{org}/issues
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var members: Members {
        Members(path: path + "/members")
    }
    
    public struct Members {
        // /orgs/{org}/members
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Members {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: path + "/" + username)
    }

    public struct WithUsername {
        // /orgs/{org}/members/{username}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var memberships: Memberships {
        Memberships(path: path + "/memberships")
    }
    
    public struct Memberships {
        // /orgs/{org}/memberships
        public let path: String
    }
}

extension Resources.Orgs.WithOrg.Memberships {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: path + "/" + username)
    }

    public struct WithUsername {
        // /orgs/{org}/memberships/{username}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var migrations: Migrations {
        Migrations(path: path + "/migrations")
    }
    
    public struct Migrations {
        // /orgs/{org}/migrations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Migrations {
    public func migrationID(_ migrationID: String) -> WithMigrationID {
        WithMigrationID(path: path + "/" + migrationID)
    }

    public struct WithMigrationID {
        // /orgs/{org}/migrations/{migration_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Migrations.WithMigrationID {
    public var archive: Archive {
        Archive(path: path + "/archive")
    }
    
    public struct Archive {
        // /orgs/{org}/migrations/{migration_id}/archive
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Migrations.WithMigrationID {
    public var repos: Repos {
        Repos(path: path + "/repos")
    }
    
    public struct Repos {
        // /orgs/{org}/migrations/{migration_id}/repos
        public let path: String
    }
}

extension Resources.Orgs.WithOrg.Migrations.WithMigrationID.Repos {
    public func repoName(_ repoName: String) -> WithRepoName {
        WithRepoName(path: path + "/" + repoName)
    }

    public struct WithRepoName {
        // /orgs/{org}/migrations/{migration_id}/repos/{repo_name}
        public let path: String
    }
}

extension Resources.Orgs.WithOrg.Migrations.WithMigrationID.Repos.WithRepoName {
    public var lock: Lock {
        Lock(path: path + "/lock")
    }
    
    public struct Lock {
        // /orgs/{org}/migrations/{migration_id}/repos/{repo_name}/lock
        public let path: String


    }
}

extension Resources.Orgs.WithOrg.Migrations.WithMigrationID {
    public var repositories: Repositories {
        Repositories(path: path + "/repositories")
    }
    
    public struct Repositories {
        // /orgs/{org}/migrations/{migration_id}/repositories
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var outsideCollaborators: OutsideCollaborators {
        OutsideCollaborators(path: path + "/outside_collaborators")
    }
    
    public struct OutsideCollaborators {
        // /orgs/{org}/outside_collaborators
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.OutsideCollaborators {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: path + "/" + username)
    }

    public struct WithUsername {
        // /orgs/{org}/outside_collaborators/{username}
        public let path: String


    }
}

extension Resources.Orgs.WithOrg {
    public var packages: Packages {
        Packages(path: path + "/packages")
    }
    
    public struct Packages {
        // /orgs/{org}/packages
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Packages {
    public func packageType(_ packageType: String) -> WithPackageType {
        WithPackageType(path: path + "/" + packageType)
    }

    public struct WithPackageType {
        // /orgs/{org}/packages/{package_type}
        public let path: String
    }
}

extension Resources.Orgs.WithOrg.Packages.WithPackageType {
    public func packageName(_ packageName: String) -> WithPackageName {
        WithPackageName(path: path + "/" + packageName)
    }

    public struct WithPackageName {
        // /orgs/{org}/packages/{package_type}/{package_name}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Packages.WithPackageType.WithPackageName {
    public var restore: Restore {
        Restore(path: path + "/restore")
    }
    
    public struct Restore {
        // /orgs/{org}/packages/{package_type}/{package_name}/restore
        public let path: String


    }
}

extension Resources.Orgs.WithOrg.Packages.WithPackageType.WithPackageName {
    public var versions: Versions {
        Versions(path: path + "/versions")
    }
    
    public struct Versions {
        // /orgs/{org}/packages/{package_type}/{package_name}/versions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Packages.WithPackageType.WithPackageName.Versions {
    public func packageVersionID(_ packageVersionID: String) -> WithPackageVersionID {
        WithPackageVersionID(path: path + "/" + packageVersionID)
    }

    public struct WithPackageVersionID {
        // /orgs/{org}/packages/{package_type}/{package_name}/versions/{package_version_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Packages.WithPackageType.WithPackageName.Versions.WithPackageVersionID {
    public var restore: Restore {
        Restore(path: path + "/restore")
    }
    
    public struct Restore {
        // /orgs/{org}/packages/{package_type}/{package_name}/versions/{package_version_id}/restore
        public let path: String


    }
}

extension Resources.Orgs.WithOrg {
    public var projects: Projects {
        Projects(path: path + "/projects")
    }
    
    public struct Projects {
        // /orgs/{org}/projects
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var publicMembers: PublicMembers {
        PublicMembers(path: path + "/public_members")
    }
    
    public struct PublicMembers {
        // /orgs/{org}/public_members
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.PublicMembers {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: path + "/" + username)
    }

    public struct WithUsername {
        // /orgs/{org}/public_members/{username}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var repos: Repos {
        Repos(path: path + "/repos")
    }
    
    public struct Repos {
        // /orgs/{org}/repos
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var secretScanning: SecretScanning {
        SecretScanning(path: path + "/secret-scanning")
    }
    
    public struct SecretScanning {
        // /orgs/{org}/secret-scanning
        public let path: String
    }
}

extension Resources.Orgs.WithOrg.SecretScanning {
    public var alerts: Alerts {
        Alerts(path: path + "/alerts")
    }
    
    public struct Alerts {
        // /orgs/{org}/secret-scanning/alerts
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var settings: Settings {
        Settings(path: path + "/settings")
    }
    
    public struct Settings {
        // /orgs/{org}/settings
        public let path: String
    }
}

extension Resources.Orgs.WithOrg.Settings {
    public var billing: Billing {
        Billing(path: path + "/billing")
    }
    
    public struct Billing {
        // /orgs/{org}/settings/billing
        public let path: String
    }
}

extension Resources.Orgs.WithOrg.Settings.Billing {
    public var actions: Actions {
        Actions(path: path + "/actions")
    }
    
    public struct Actions {
        // /orgs/{org}/settings/billing/actions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Settings.Billing {
    public var advancedSecurity: AdvancedSecurity {
        AdvancedSecurity(path: path + "/advanced-security")
    }
    
    public struct AdvancedSecurity {
        // /orgs/{org}/settings/billing/advanced-security
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Settings.Billing {
    public var packages: Packages {
        Packages(path: path + "/packages")
    }
    
    public struct Packages {
        // /orgs/{org}/settings/billing/packages
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Settings.Billing {
    public var sharedStorage: SharedStorage {
        SharedStorage(path: path + "/shared-storage")
    }
    
    public struct SharedStorage {
        // /orgs/{org}/settings/billing/shared-storage
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var teamSync: TeamSync {
        TeamSync(path: path + "/team-sync")
    }
    
    public struct TeamSync {
        // /orgs/{org}/team-sync
        public let path: String
    }
}

extension Resources.Orgs.WithOrg.TeamSync {
    public var groups: Groups {
        Groups(path: path + "/groups")
    }
    
    public struct Groups {
        // /orgs/{org}/team-sync/groups
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg {
    public var teams: Teams {
        Teams(path: path + "/teams")
    }
    
    public struct Teams {
        // /orgs/{org}/teams
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams {
    public func teamSlug(_ teamSlug: String) -> WithTeamSlug {
        WithTeamSlug(path: path + "/" + teamSlug)
    }

    public struct WithTeamSlug {
        // /orgs/{org}/teams/{team_slug}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug {
    public var discussions: Discussions {
        Discussions(path: path + "/discussions")
    }
    
    public struct Discussions {
        // /orgs/{org}/teams/{team_slug}/discussions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug.Discussions {
    public func discussionNumber(_ discussionNumber: String) -> WithDiscussionNumber {
        WithDiscussionNumber(path: path + "/" + discussionNumber)
    }

    public struct WithDiscussionNumber {
        // /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug.Discussions.WithDiscussionNumber {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }
    
    public struct Comments {
        // /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug.Discussions.WithDiscussionNumber.Comments {
    public func commentNumber(_ commentNumber: String) -> WithCommentNumber {
        WithCommentNumber(path: path + "/" + commentNumber)
    }

    public struct WithCommentNumber {
        // /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug.Discussions.WithDiscussionNumber.Comments.WithCommentNumber {
    public var reactions: Reactions {
        Reactions(path: path + "/reactions")
    }
    
    public struct Reactions {
        // /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}/reactions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug.Discussions.WithDiscussionNumber.Comments.WithCommentNumber.Reactions {
    public func reactionID(_ reactionID: String) -> WithReactionID {
        WithReactionID(path: path + "/" + reactionID)
    }

    public struct WithReactionID {
        // /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}/reactions/{reaction_id}
        public let path: String


    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug.Discussions.WithDiscussionNumber {
    public var reactions: Reactions {
        Reactions(path: path + "/reactions")
    }
    
    public struct Reactions {
        // /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/reactions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug.Discussions.WithDiscussionNumber.Reactions {
    public func reactionID(_ reactionID: String) -> WithReactionID {
        WithReactionID(path: path + "/" + reactionID)
    }

    public struct WithReactionID {
        // /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/reactions/{reaction_id}
        public let path: String


    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug {
    public var externalGroups: ExternalGroups {
        ExternalGroups(path: path + "/external-groups")
    }
    
    public struct ExternalGroups {
        // /orgs/{org}/teams/{team_slug}/external-groups
        public let path: String


    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug {
    public var invitations: Invitations {
        Invitations(path: path + "/invitations")
    }
    
    public struct Invitations {
        // /orgs/{org}/teams/{team_slug}/invitations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug {
    public var members: Members {
        Members(path: path + "/members")
    }
    
    public struct Members {
        // /orgs/{org}/teams/{team_slug}/members
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug {
    public var memberships: Memberships {
        Memberships(path: path + "/memberships")
    }
    
    public struct Memberships {
        // /orgs/{org}/teams/{team_slug}/memberships
        public let path: String
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug.Memberships {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: path + "/" + username)
    }

    public struct WithUsername {
        // /orgs/{org}/teams/{team_slug}/memberships/{username}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug {
    public var projects: Projects {
        Projects(path: path + "/projects")
    }
    
    public struct Projects {
        // /orgs/{org}/teams/{team_slug}/projects
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug.Projects {
    public func projectID(_ projectID: String) -> WithProjectID {
        WithProjectID(path: path + "/" + projectID)
    }

    public struct WithProjectID {
        // /orgs/{org}/teams/{team_slug}/projects/{project_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug {
    public var repos: Repos {
        Repos(path: path + "/repos")
    }
    
    public struct Repos {
        // /orgs/{org}/teams/{team_slug}/repos
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug.Repos {
    public func owner(_ owner: String) -> WithOwner {
        WithOwner(path: path + "/" + owner)
    }

    public struct WithOwner {
        // /orgs/{org}/teams/{team_slug}/repos/{owner}
        public let path: String
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug.Repos.WithOwner {
    public func repo(_ repo: String) -> WithRepo {
        WithRepo(path: path + "/" + repo)
    }

    public struct WithRepo {
        // /orgs/{org}/teams/{team_slug}/repos/{owner}/{repo}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug {
    public var teamSync: TeamSync {
        TeamSync(path: path + "/team-sync")
    }
    
    public struct TeamSync {
        // /orgs/{org}/teams/{team_slug}/team-sync
        public let path: String
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug.TeamSync {
    public var groupMappings: GroupMappings {
        GroupMappings(path: path + "/group-mappings")
    }
    
    public struct GroupMappings {
        // /orgs/{org}/teams/{team_slug}/team-sync/group-mappings
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Orgs.WithOrg.Teams.WithTeamSlug {
    public var teams: Teams {
        Teams(path: path + "/teams")
    }
    
    public struct Teams {
        // /orgs/{org}/teams/{team_slug}/teams
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var projects: Projects {
        Projects(path: "/projects")
    }
    
    public struct Projects {
        // /projects
        public let path: String
    }
}

extension Resources.Projects {
    public var columns: Columns {
        Columns(path: path + "/columns")
    }
    
    public struct Columns {
        // /projects/columns
        public let path: String
    }
}

extension Resources.Projects.Columns {
    public var cards: Cards {
        Cards(path: path + "/cards")
    }
    
    public struct Cards {
        // /projects/columns/cards
        public let path: String
    }
}

extension Resources.Projects.Columns.Cards {
    public func cardID(_ cardID: String) -> WithCardID {
        WithCardID(path: path + "/" + cardID)
    }

    public struct WithCardID {
        // /projects/columns/cards/{card_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Projects.Columns.Cards.WithCardID {
    public var moves: Moves {
        Moves(path: path + "/moves")
    }
    
    public struct Moves {
        // /projects/columns/cards/{card_id}/moves
        public let path: String


    }
}

extension Resources.Projects.Columns {
    public func columnID(_ columnID: String) -> WithColumnID {
        WithColumnID(path: path + "/" + columnID)
    }

    public struct WithColumnID {
        // /projects/columns/{column_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Projects.Columns.WithColumnID {
    public var cards: Cards {
        Cards(path: path + "/cards")
    }
    
    public struct Cards {
        // /projects/columns/{column_id}/cards
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Projects.Columns.WithColumnID {
    public var moves: Moves {
        Moves(path: path + "/moves")
    }
    
    public struct Moves {
        // /projects/columns/{column_id}/moves
        public let path: String


    }
}

extension Resources.Projects {
    public func projectID(_ projectID: String) -> WithProjectID {
        WithProjectID(path: path + "/" + projectID)
    }

    public struct WithProjectID {
        // /projects/{project_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Projects.WithProjectID {
    public var collaborators: Collaborators {
        Collaborators(path: path + "/collaborators")
    }
    
    public struct Collaborators {
        // /projects/{project_id}/collaborators
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Projects.WithProjectID.Collaborators {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: path + "/" + username)
    }

    public struct WithUsername {
        // /projects/{project_id}/collaborators/{username}
        public let path: String


    }
}

extension Resources.Projects.WithProjectID.Collaborators.WithUsername {
    public var permission: Permission {
        Permission(path: path + "/permission")
    }
    
    public struct Permission {
        // /projects/{project_id}/collaborators/{username}/permission
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Projects.WithProjectID {
    public var columns: Columns {
        Columns(path: path + "/columns")
    }
    
    public struct Columns {
        // /projects/{project_id}/columns
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var rateLimit: RateLimit {
        RateLimit(path: "/rate_limit")
    }
    
    public struct RateLimit {
        // /rate_limit
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var reactions: Reactions {
        Reactions(path: "/reactions")
    }
    
    public struct Reactions {
        // /reactions
        public let path: String
    }
}

extension Resources.Reactions {
    public func reactionID(_ reactionID: String) -> WithReactionID {
        WithReactionID(path: path + "/" + reactionID)
    }

    public struct WithReactionID {
        // /reactions/{reaction_id}
        public let path: String


    }
}

extension Resources {
    public static var repos: Repos {
        Repos(path: "/repos")
    }
    
    public struct Repos {
        // /repos
        public let path: String
    }
}

extension Resources.Repos {
    public func owner(_ owner: String) -> WithOwner {
        WithOwner(path: path + "/" + owner)
    }

    public struct WithOwner {
        // /repos/{owner}
        public let path: String
    }
}

extension Resources.Repos.WithOwner {
    public func repo(_ repo: String) -> WithRepo {
        WithRepo(path: path + "/" + repo)
    }

    public struct WithRepo {
        // /repos/{owner}/{repo}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var actions: Actions {
        Actions(path: path + "/actions")
    }
    
    public struct Actions {
        // /repos/{owner}/{repo}/actions
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions {
    public var artifacts: Artifacts {
        Artifacts(path: path + "/artifacts")
    }
    
    public struct Artifacts {
        // /repos/{owner}/{repo}/actions/artifacts
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Artifacts {
    public func artifactID(_ artifactID: String) -> WithArtifactID {
        WithArtifactID(path: path + "/" + artifactID)
    }

    public struct WithArtifactID {
        // /repos/{owner}/{repo}/actions/artifacts/{artifact_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Artifacts.WithArtifactID {
    public func archiveFormat(_ archiveFormat: String) -> WithArchiveFormat {
        WithArchiveFormat(path: path + "/" + archiveFormat)
    }

    public struct WithArchiveFormat {
        // /repos/{owner}/{repo}/actions/artifacts/{artifact_id}/{archive_format}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions {
    public var jobs: Jobs {
        Jobs(path: path + "/jobs")
    }
    
    public struct Jobs {
        // /repos/{owner}/{repo}/actions/jobs
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Jobs {
    public func jobID(_ jobID: String) -> WithJobID {
        WithJobID(path: path + "/" + jobID)
    }

    public struct WithJobID {
        // /repos/{owner}/{repo}/actions/jobs/{job_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Jobs.WithJobID {
    public var logs: Logs {
        Logs(path: path + "/logs")
    }
    
    public struct Logs {
        // /repos/{owner}/{repo}/actions/jobs/{job_id}/logs
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions {
    public var permissions: Permissions {
        Permissions(path: path + "/permissions")
    }
    
    public struct Permissions {
        // /repos/{owner}/{repo}/actions/permissions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Permissions {
    public var selectedActions: SelectedActions {
        SelectedActions(path: path + "/selected-actions")
    }
    
    public struct SelectedActions {
        // /repos/{owner}/{repo}/actions/permissions/selected-actions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions {
    public var runners: Runners {
        Runners(path: path + "/runners")
    }
    
    public struct Runners {
        // /repos/{owner}/{repo}/actions/runners
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runners {
    public var downloads: Downloads {
        Downloads(path: path + "/downloads")
    }
    
    public struct Downloads {
        // /repos/{owner}/{repo}/actions/runners/downloads
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runners {
    public var registrationToken: RegistrationToken {
        RegistrationToken(path: path + "/registration-token")
    }
    
    public struct RegistrationToken {
        // /repos/{owner}/{repo}/actions/runners/registration-token
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runners {
    public var removeToken: RemoveToken {
        RemoveToken(path: path + "/remove-token")
    }
    
    public struct RemoveToken {
        // /repos/{owner}/{repo}/actions/runners/remove-token
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runners {
    public func runnerID(_ runnerID: String) -> WithRunnerID {
        WithRunnerID(path: path + "/" + runnerID)
    }

    public struct WithRunnerID {
        // /repos/{owner}/{repo}/actions/runners/{runner_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions {
    public var runs: Runs {
        Runs(path: path + "/runs")
    }
    
    public struct Runs {
        // /repos/{owner}/{repo}/actions/runs
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runs {
    public func runID(_ runID: String) -> WithRunID {
        WithRunID(path: path + "/" + runID)
    }

    public struct WithRunID {
        // /repos/{owner}/{repo}/actions/runs/{run_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID {
    public var approvals: Approvals {
        Approvals(path: path + "/approvals")
    }
    
    public struct Approvals {
        // /repos/{owner}/{repo}/actions/runs/{run_id}/approvals
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID {
    public var approve: Approve {
        Approve(path: path + "/approve")
    }
    
    public struct Approve {
        // /repos/{owner}/{repo}/actions/runs/{run_id}/approve
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID {
    public var artifacts: Artifacts {
        Artifacts(path: path + "/artifacts")
    }
    
    public struct Artifacts {
        // /repos/{owner}/{repo}/actions/runs/{run_id}/artifacts
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID {
    public var attempts: Attempts {
        Attempts(path: path + "/attempts")
    }
    
    public struct Attempts {
        // /repos/{owner}/{repo}/actions/runs/{run_id}/attempts
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID.Attempts {
    public func attemptNumber(_ attemptNumber: String) -> WithAttemptNumber {
        WithAttemptNumber(path: path + "/" + attemptNumber)
    }

    public struct WithAttemptNumber {
        // /repos/{owner}/{repo}/actions/runs/{run_id}/attempts/{attempt_number}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID.Attempts.WithAttemptNumber {
    public var jobs: Jobs {
        Jobs(path: path + "/jobs")
    }
    
    public struct Jobs {
        // /repos/{owner}/{repo}/actions/runs/{run_id}/attempts/{attempt_number}/jobs
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID.Attempts.WithAttemptNumber {
    public var logs: Logs {
        Logs(path: path + "/logs")
    }
    
    public struct Logs {
        // /repos/{owner}/{repo}/actions/runs/{run_id}/attempts/{attempt_number}/logs
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID {
    public var cancel: Cancel {
        Cancel(path: path + "/cancel")
    }
    
    public struct Cancel {
        // /repos/{owner}/{repo}/actions/runs/{run_id}/cancel
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID {
    public var jobs: Jobs {
        Jobs(path: path + "/jobs")
    }
    
    public struct Jobs {
        // /repos/{owner}/{repo}/actions/runs/{run_id}/jobs
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID {
    public var logs: Logs {
        Logs(path: path + "/logs")
    }
    
    public struct Logs {
        // /repos/{owner}/{repo}/actions/runs/{run_id}/logs
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID {
    public var pendingDeployments: PendingDeployments {
        PendingDeployments(path: path + "/pending_deployments")
    }
    
    public struct PendingDeployments {
        // /repos/{owner}/{repo}/actions/runs/{run_id}/pending_deployments
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID {
    public var rerun: Rerun {
        Rerun(path: path + "/rerun")
    }
    
    public struct Rerun {
        // /repos/{owner}/{repo}/actions/runs/{run_id}/rerun
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID {
    public var timing: Timing {
        Timing(path: path + "/timing")
    }
    
    public struct Timing {
        // /repos/{owner}/{repo}/actions/runs/{run_id}/timing
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions {
    public var secrets: Secrets {
        Secrets(path: path + "/secrets")
    }
    
    public struct Secrets {
        // /repos/{owner}/{repo}/actions/secrets
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Secrets {
    public var publicKey: PublicKey {
        PublicKey(path: path + "/public-key")
    }
    
    public struct PublicKey {
        // /repos/{owner}/{repo}/actions/secrets/public-key
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Secrets {
    public func secretName(_ secretName: String) -> WithSecretName {
        WithSecretName(path: path + "/" + secretName)
    }

    public struct WithSecretName {
        // /repos/{owner}/{repo}/actions/secrets/{secret_name}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions {
    public var workflows: Workflows {
        Workflows(path: path + "/workflows")
    }
    
    public struct Workflows {
        // /repos/{owner}/{repo}/actions/workflows
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Workflows {
    public func workflowID(_ workflowID: String) -> WithWorkflowID {
        WithWorkflowID(path: path + "/" + workflowID)
    }

    public struct WithWorkflowID {
        // /repos/{owner}/{repo}/actions/workflows/{workflow_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Workflows.WithWorkflowID {
    public var disable: Disable {
        Disable(path: path + "/disable")
    }
    
    public struct Disable {
        // /repos/{owner}/{repo}/actions/workflows/{workflow_id}/disable
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Workflows.WithWorkflowID {
    public var dispatches: Dispatches {
        Dispatches(path: path + "/dispatches")
    }
    
    public struct Dispatches {
        // /repos/{owner}/{repo}/actions/workflows/{workflow_id}/dispatches
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Workflows.WithWorkflowID {
    public var enable: Enable {
        Enable(path: path + "/enable")
    }
    
    public struct Enable {
        // /repos/{owner}/{repo}/actions/workflows/{workflow_id}/enable
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Workflows.WithWorkflowID {
    public var runs: Runs {
        Runs(path: path + "/runs")
    }
    
    public struct Runs {
        // /repos/{owner}/{repo}/actions/workflows/{workflow_id}/runs
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Actions.Workflows.WithWorkflowID {
    public var timing: Timing {
        Timing(path: path + "/timing")
    }
    
    public struct Timing {
        // /repos/{owner}/{repo}/actions/workflows/{workflow_id}/timing
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var assignees: Assignees {
        Assignees(path: path + "/assignees")
    }
    
    public struct Assignees {
        // /repos/{owner}/{repo}/assignees
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Assignees {
    public func assignee(_ assignee: String) -> WithAssignee {
        WithAssignee(path: path + "/" + assignee)
    }

    public struct WithAssignee {
        // /repos/{owner}/{repo}/assignees/{assignee}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var autolinks: Autolinks {
        Autolinks(path: path + "/autolinks")
    }
    
    public struct Autolinks {
        // /repos/{owner}/{repo}/autolinks
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Autolinks {
    public func autolinkID(_ autolinkID: String) -> WithAutolinkID {
        WithAutolinkID(path: path + "/" + autolinkID)
    }

    public struct WithAutolinkID {
        // /repos/{owner}/{repo}/autolinks/{autolink_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var automatedSecurityFixes: AutomatedSecurityFixes {
        AutomatedSecurityFixes(path: path + "/automated-security-fixes")
    }
    
    public struct AutomatedSecurityFixes {
        // /repos/{owner}/{repo}/automated-security-fixes
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var branches: Branches {
        Branches(path: path + "/branches")
    }
    
    public struct Branches {
        // /repos/{owner}/{repo}/branches
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Branches {
    public func branch(_ branch: String) -> WithBranch {
        WithBranch(path: path + "/" + branch)
    }

    public struct WithBranch {
        // /repos/{owner}/{repo}/branches/{branch}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Branches.WithBranch {
    public var protection: Protection {
        Protection(path: path + "/protection")
    }
    
    public struct Protection {
        // /repos/{owner}/{repo}/branches/{branch}/protection
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Branches.WithBranch.Protection {
    public var enforceAdmins: EnforceAdmins {
        EnforceAdmins(path: path + "/enforce_admins")
    }
    
    public struct EnforceAdmins {
        // /repos/{owner}/{repo}/branches/{branch}/protection/enforce_admins
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Branches.WithBranch.Protection {
    public var requiredPullRequestReviews: RequiredPullRequestReviews {
        RequiredPullRequestReviews(path: path + "/required_pull_request_reviews")
    }
    
    public struct RequiredPullRequestReviews {
        // /repos/{owner}/{repo}/branches/{branch}/protection/required_pull_request_reviews
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Branches.WithBranch.Protection {
    public var requiredSignatures: RequiredSignatures {
        RequiredSignatures(path: path + "/required_signatures")
    }
    
    public struct RequiredSignatures {
        // /repos/{owner}/{repo}/branches/{branch}/protection/required_signatures
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Branches.WithBranch.Protection {
    public var requiredStatusChecks: RequiredStatusChecks {
        RequiredStatusChecks(path: path + "/required_status_checks")
    }
    
    public struct RequiredStatusChecks {
        // /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Branches.WithBranch.Protection.RequiredStatusChecks {
    public var contexts: Contexts {
        Contexts(path: path + "/contexts")
    }
    
    public struct Contexts {
        // /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Branches.WithBranch.Protection {
    public var restrictions: Restrictions {
        Restrictions(path: path + "/restrictions")
    }
    
    public struct Restrictions {
        // /repos/{owner}/{repo}/branches/{branch}/protection/restrictions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Branches.WithBranch.Protection.Restrictions {
    public var apps: Apps {
        Apps(path: path + "/apps")
    }
    
    public struct Apps {
        // /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Branches.WithBranch.Protection.Restrictions {
    public var teams: Teams {
        Teams(path: path + "/teams")
    }
    
    public struct Teams {
        // /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Branches.WithBranch.Protection.Restrictions {
    public var users: Users {
        Users(path: path + "/users")
    }
    
    public struct Users {
        // /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Branches.WithBranch {
    public var rename: Rename {
        Rename(path: path + "/rename")
    }
    
    public struct Rename {
        // /repos/{owner}/{repo}/branches/{branch}/rename
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var checkRuns: CheckRuns {
        CheckRuns(path: path + "/check-runs")
    }
    
    public struct CheckRuns {
        // /repos/{owner}/{repo}/check-runs
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.CheckRuns {
    public func checkRunID(_ checkRunID: String) -> WithCheckRunID {
        WithCheckRunID(path: path + "/" + checkRunID)
    }

    public struct WithCheckRunID {
        // /repos/{owner}/{repo}/check-runs/{check_run_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.CheckRuns.WithCheckRunID {
    public var annotations: Annotations {
        Annotations(path: path + "/annotations")
    }
    
    public struct Annotations {
        // /repos/{owner}/{repo}/check-runs/{check_run_id}/annotations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.CheckRuns.WithCheckRunID {
    public var rerequest: Rerequest {
        Rerequest(path: path + "/rerequest")
    }
    
    public struct Rerequest {
        // /repos/{owner}/{repo}/check-runs/{check_run_id}/rerequest
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var checkSuites: CheckSuites {
        CheckSuites(path: path + "/check-suites")
    }
    
    public struct CheckSuites {
        // /repos/{owner}/{repo}/check-suites
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.CheckSuites {
    public var preferences: Preferences {
        Preferences(path: path + "/preferences")
    }
    
    public struct Preferences {
        // /repos/{owner}/{repo}/check-suites/preferences
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.CheckSuites {
    public func checkSuiteID(_ checkSuiteID: String) -> WithCheckSuiteID {
        WithCheckSuiteID(path: path + "/" + checkSuiteID)
    }

    public struct WithCheckSuiteID {
        // /repos/{owner}/{repo}/check-suites/{check_suite_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.CheckSuites.WithCheckSuiteID {
    public var checkRuns: CheckRuns {
        CheckRuns(path: path + "/check-runs")
    }
    
    public struct CheckRuns {
        // /repos/{owner}/{repo}/check-suites/{check_suite_id}/check-runs
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.CheckSuites.WithCheckSuiteID {
    public var rerequest: Rerequest {
        Rerequest(path: path + "/rerequest")
    }
    
    public struct Rerequest {
        // /repos/{owner}/{repo}/check-suites/{check_suite_id}/rerequest
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var codeScanning: CodeScanning {
        CodeScanning(path: path + "/code-scanning")
    }
    
    public struct CodeScanning {
        // /repos/{owner}/{repo}/code-scanning
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.CodeScanning {
    public var alerts: Alerts {
        Alerts(path: path + "/alerts")
    }
    
    public struct Alerts {
        // /repos/{owner}/{repo}/code-scanning/alerts
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.CodeScanning.Alerts {
    public func alertNumber(_ alertNumber: String) -> WithAlertNumber {
        WithAlertNumber(path: path + "/" + alertNumber)
    }

    public struct WithAlertNumber {
        // /repos/{owner}/{repo}/code-scanning/alerts/{alert_number}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.CodeScanning.Alerts.WithAlertNumber {
    public var instances: Instances {
        Instances(path: path + "/instances")
    }
    
    public struct Instances {
        // /repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/instances
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.CodeScanning {
    public var analyses: Analyses {
        Analyses(path: path + "/analyses")
    }
    
    public struct Analyses {
        // /repos/{owner}/{repo}/code-scanning/analyses
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.CodeScanning.Analyses {
    public func analysisID(_ analysisID: String) -> WithAnalysisID {
        WithAnalysisID(path: path + "/" + analysisID)
    }

    public struct WithAnalysisID {
        // /repos/{owner}/{repo}/code-scanning/analyses/{analysis_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.CodeScanning {
    public var sarifs: Sarifs {
        Sarifs(path: path + "/sarifs")
    }
    
    public struct Sarifs {
        // /repos/{owner}/{repo}/code-scanning/sarifs
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.CodeScanning.Sarifs {
    public func sarifID(_ sarifID: String) -> WithSarifID {
        WithSarifID(path: path + "/" + sarifID)
    }

    public struct WithSarifID {
        // /repos/{owner}/{repo}/code-scanning/sarifs/{sarif_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var codespaces: Codespaces {
        Codespaces(path: path + "/codespaces")
    }
    
    public struct Codespaces {
        // /repos/{owner}/{repo}/codespaces
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Codespaces {
    public var machines: Machines {
        Machines(path: path + "/machines")
    }
    
    public struct Machines {
        // /repos/{owner}/{repo}/codespaces/machines
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var collaborators: Collaborators {
        Collaborators(path: path + "/collaborators")
    }
    
    public struct Collaborators {
        // /repos/{owner}/{repo}/collaborators
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Collaborators {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: path + "/" + username)
    }

    public struct WithUsername {
        // /repos/{owner}/{repo}/collaborators/{username}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Collaborators.WithUsername {
    public var permission: Permission {
        Permission(path: path + "/permission")
    }
    
    public struct Permission {
        // /repos/{owner}/{repo}/collaborators/{username}/permission
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }
    
    public struct Comments {
        // /repos/{owner}/{repo}/comments
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Comments {
    public func commentID(_ commentID: String) -> WithCommentID {
        WithCommentID(path: path + "/" + commentID)
    }

    public struct WithCommentID {
        // /repos/{owner}/{repo}/comments/{comment_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Comments.WithCommentID {
    public var reactions: Reactions {
        Reactions(path: path + "/reactions")
    }
    
    public struct Reactions {
        // /repos/{owner}/{repo}/comments/{comment_id}/reactions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Comments.WithCommentID.Reactions {
    public func reactionID(_ reactionID: String) -> WithReactionID {
        WithReactionID(path: path + "/" + reactionID)
    }

    public struct WithReactionID {
        // /repos/{owner}/{repo}/comments/{comment_id}/reactions/{reaction_id}
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var commits: Commits {
        Commits(path: path + "/commits")
    }
    
    public struct Commits {
        // /repos/{owner}/{repo}/commits
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Commits {
    public func commitSha(_ commitSha: String) -> WithCommitSha {
        WithCommitSha(path: path + "/" + commitSha)
    }

    public struct WithCommitSha {
        // /repos/{owner}/{repo}/commits/{commit_sha}
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Commits.WithCommitSha {
    public var branchesWhereHead: BranchesWhereHead {
        BranchesWhereHead(path: path + "/branches-where-head")
    }
    
    public struct BranchesWhereHead {
        // /repos/{owner}/{repo}/commits/{commit_sha}/branches-where-head
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Commits.WithCommitSha {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }
    
    public struct Comments {
        // /repos/{owner}/{repo}/commits/{commit_sha}/comments
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Commits.WithCommitSha {
    public var pulls: Pulls {
        Pulls(path: path + "/pulls")
    }
    
    public struct Pulls {
        // /repos/{owner}/{repo}/commits/{commit_sha}/pulls
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Commits {
    public func ref(_ ref: String) -> WithRef {
        WithRef(path: path + "/" + ref)
    }

    public struct WithRef {
        // /repos/{owner}/{repo}/commits/{ref}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Commits.WithRef {
    public var checkRuns: CheckRuns {
        CheckRuns(path: path + "/check-runs")
    }
    
    public struct CheckRuns {
        // /repos/{owner}/{repo}/commits/{ref}/check-runs
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Commits.WithRef {
    public var checkSuites: CheckSuites {
        CheckSuites(path: path + "/check-suites")
    }
    
    public struct CheckSuites {
        // /repos/{owner}/{repo}/commits/{ref}/check-suites
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Commits.WithRef {
    public var status: Status {
        Status(path: path + "/status")
    }
    
    public struct Status {
        // /repos/{owner}/{repo}/commits/{ref}/status
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Commits.WithRef {
    public var statuses: Statuses {
        Statuses(path: path + "/statuses")
    }
    
    public struct Statuses {
        // /repos/{owner}/{repo}/commits/{ref}/statuses
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var community: Community {
        Community(path: path + "/community")
    }
    
    public struct Community {
        // /repos/{owner}/{repo}/community
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Community {
    public var profile: Profile {
        Profile(path: path + "/profile")
    }
    
    public struct Profile {
        // /repos/{owner}/{repo}/community/profile
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var compare: Compare {
        Compare(path: path + "/compare")
    }
    
    public struct Compare {
        // /repos/{owner}/{repo}/compare
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Compare {
    public func basehead(_ basehead: String) -> WithBasehead {
        WithBasehead(path: path + "/" + basehead)
    }

    public struct WithBasehead {
        // /repos/{owner}/{repo}/compare/{basehead}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var contentReferences: ContentReferences {
        ContentReferences(path: path + "/content_references")
    }
    
    public struct ContentReferences {
        // /repos/{owner}/{repo}/content_references
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.ContentReferences {
    public func contentReferenceID(_ contentReferenceID: String) -> WithContentReferenceID {
        WithContentReferenceID(path: path + "/" + contentReferenceID)
    }

    public struct WithContentReferenceID {
        // /repos/{owner}/{repo}/content_references/{content_reference_id}
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.ContentReferences.WithContentReferenceID {
    public var attachments: Attachments {
        Attachments(path: path + "/attachments")
    }
    
    public struct Attachments {
        // /repos/{owner}/{repo}/content_references/{content_reference_id}/attachments
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var contents: Contents {
        Contents(path: path + "/contents")
    }
    
    public struct Contents {
        // /repos/{owner}/{repo}/contents
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Contents {
    public func path(_ path: String) -> WithPath {
        WithPath(path: path + "/" + path)
    }

    public struct WithPath {
        // /repos/{owner}/{repo}/contents/{path}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var contributors: Contributors {
        Contributors(path: path + "/contributors")
    }
    
    public struct Contributors {
        // /repos/{owner}/{repo}/contributors
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var deployments: Deployments {
        Deployments(path: path + "/deployments")
    }
    
    public struct Deployments {
        // /repos/{owner}/{repo}/deployments
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Deployments {
    public func deploymentID(_ deploymentID: String) -> WithDeploymentID {
        WithDeploymentID(path: path + "/" + deploymentID)
    }

    public struct WithDeploymentID {
        // /repos/{owner}/{repo}/deployments/{deployment_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Deployments.WithDeploymentID {
    public var statuses: Statuses {
        Statuses(path: path + "/statuses")
    }
    
    public struct Statuses {
        // /repos/{owner}/{repo}/deployments/{deployment_id}/statuses
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Deployments.WithDeploymentID.Statuses {
    public func statusID(_ statusID: String) -> WithStatusID {
        WithStatusID(path: path + "/" + statusID)
    }

    public struct WithStatusID {
        // /repos/{owner}/{repo}/deployments/{deployment_id}/statuses/{status_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var dispatches: Dispatches {
        Dispatches(path: path + "/dispatches")
    }
    
    public struct Dispatches {
        // /repos/{owner}/{repo}/dispatches
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var environments: Environments {
        Environments(path: path + "/environments")
    }
    
    public struct Environments {
        // /repos/{owner}/{repo}/environments
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Environments {
    public func environmentName(_ environmentName: String) -> WithEnvironmentName {
        WithEnvironmentName(path: path + "/" + environmentName)
    }

    public struct WithEnvironmentName {
        // /repos/{owner}/{repo}/environments/{environment_name}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var events: Events {
        Events(path: path + "/events")
    }
    
    public struct Events {
        // /repos/{owner}/{repo}/events
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var forks: Forks {
        Forks(path: path + "/forks")
    }
    
    public struct Forks {
        // /repos/{owner}/{repo}/forks
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var git: Git {
        Git(path: path + "/git")
    }
    
    public struct Git {
        // /repos/{owner}/{repo}/git
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Git {
    public var blobs: Blobs {
        Blobs(path: path + "/blobs")
    }
    
    public struct Blobs {
        // /repos/{owner}/{repo}/git/blobs
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Git.Blobs {
    public func fileSha(_ fileSha: String) -> WithFileSha {
        WithFileSha(path: path + "/" + fileSha)
    }

    public struct WithFileSha {
        // /repos/{owner}/{repo}/git/blobs/{file_sha}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Git {
    public var commits: Commits {
        Commits(path: path + "/commits")
    }
    
    public struct Commits {
        // /repos/{owner}/{repo}/git/commits
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Git.Commits {
    public func commitSha(_ commitSha: String) -> WithCommitSha {
        WithCommitSha(path: path + "/" + commitSha)
    }

    public struct WithCommitSha {
        // /repos/{owner}/{repo}/git/commits/{commit_sha}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Git {
    public var matchingRefs: MatchingRefs {
        MatchingRefs(path: path + "/matching-refs")
    }
    
    public struct MatchingRefs {
        // /repos/{owner}/{repo}/git/matching-refs
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Git.MatchingRefs {
    public func ref(_ ref: String) -> WithRef {
        WithRef(path: path + "/" + ref)
    }

    public struct WithRef {
        // /repos/{owner}/{repo}/git/matching-refs/{ref}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Git {
    public var ref: Ref {
        Ref(path: path + "/ref")
    }
    
    public struct Ref {
        // /repos/{owner}/{repo}/git/ref
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Git.Ref {
    public func ref(_ ref: String) -> WithRef {
        WithRef(path: path + "/" + ref)
    }

    public struct WithRef {
        // /repos/{owner}/{repo}/git/ref/{ref}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Git {
    public var refs: Refs {
        Refs(path: path + "/refs")
    }
    
    public struct Refs {
        // /repos/{owner}/{repo}/git/refs
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Git.Refs {
    public func ref(_ ref: String) -> WithRef {
        WithRef(path: path + "/" + ref)
    }

    public struct WithRef {
        // /repos/{owner}/{repo}/git/refs/{ref}
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Git {
    public var tags: Tags {
        Tags(path: path + "/tags")
    }
    
    public struct Tags {
        // /repos/{owner}/{repo}/git/tags
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Git.Tags {
    public func tagSha(_ tagSha: String) -> WithTagSha {
        WithTagSha(path: path + "/" + tagSha)
    }

    public struct WithTagSha {
        // /repos/{owner}/{repo}/git/tags/{tag_sha}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Git {
    public var trees: Trees {
        Trees(path: path + "/trees")
    }
    
    public struct Trees {
        // /repos/{owner}/{repo}/git/trees
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Git.Trees {
    public func treeSha(_ treeSha: String) -> WithTreeSha {
        WithTreeSha(path: path + "/" + treeSha)
    }

    public struct WithTreeSha {
        // /repos/{owner}/{repo}/git/trees/{tree_sha}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var hooks: Hooks {
        Hooks(path: path + "/hooks")
    }
    
    public struct Hooks {
        // /repos/{owner}/{repo}/hooks
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Hooks {
    public func hookID(_ hookID: String) -> WithHookID {
        WithHookID(path: path + "/" + hookID)
    }

    public struct WithHookID {
        // /repos/{owner}/{repo}/hooks/{hook_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Hooks.WithHookID {
    public var config: Config {
        Config(path: path + "/config")
    }
    
    public struct Config {
        // /repos/{owner}/{repo}/hooks/{hook_id}/config
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Hooks.WithHookID {
    public var deliveries: Deliveries {
        Deliveries(path: path + "/deliveries")
    }
    
    public struct Deliveries {
        // /repos/{owner}/{repo}/hooks/{hook_id}/deliveries
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Hooks.WithHookID.Deliveries {
    public func deliveryID(_ deliveryID: String) -> WithDeliveryID {
        WithDeliveryID(path: path + "/" + deliveryID)
    }

    public struct WithDeliveryID {
        // /repos/{owner}/{repo}/hooks/{hook_id}/deliveries/{delivery_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Hooks.WithHookID.Deliveries.WithDeliveryID {
    public var attempts: Attempts {
        Attempts(path: path + "/attempts")
    }
    
    public struct Attempts {
        // /repos/{owner}/{repo}/hooks/{hook_id}/deliveries/{delivery_id}/attempts
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Hooks.WithHookID {
    public var pings: Pings {
        Pings(path: path + "/pings")
    }
    
    public struct Pings {
        // /repos/{owner}/{repo}/hooks/{hook_id}/pings
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Hooks.WithHookID {
    public var tests: Tests {
        Tests(path: path + "/tests")
    }
    
    public struct Tests {
        // /repos/{owner}/{repo}/hooks/{hook_id}/tests
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var `import`: Import {
        Import(path: path + "/import")
    }
    
    public struct Import {
        // /repos/{owner}/{repo}/import
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Import {
    public var authors: Authors {
        Authors(path: path + "/authors")
    }
    
    public struct Authors {
        // /repos/{owner}/{repo}/import/authors
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Import.Authors {
    public func authorID(_ authorID: String) -> WithAuthorID {
        WithAuthorID(path: path + "/" + authorID)
    }

    public struct WithAuthorID {
        // /repos/{owner}/{repo}/import/authors/{author_id}
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Import {
    public var largeFiles: LargeFiles {
        LargeFiles(path: path + "/large_files")
    }
    
    public struct LargeFiles {
        // /repos/{owner}/{repo}/import/large_files
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Import {
    public var lfs: Lfs {
        Lfs(path: path + "/lfs")
    }
    
    public struct Lfs {
        // /repos/{owner}/{repo}/import/lfs
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var installation: Installation {
        Installation(path: path + "/installation")
    }
    
    public struct Installation {
        // /repos/{owner}/{repo}/installation
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var interactionLimits: InteractionLimits {
        InteractionLimits(path: path + "/interaction-limits")
    }
    
    public struct InteractionLimits {
        // /repos/{owner}/{repo}/interaction-limits
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var invitations: Invitations {
        Invitations(path: path + "/invitations")
    }
    
    public struct Invitations {
        // /repos/{owner}/{repo}/invitations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Invitations {
    public func invitationID(_ invitationID: String) -> WithInvitationID {
        WithInvitationID(path: path + "/" + invitationID)
    }

    public struct WithInvitationID {
        // /repos/{owner}/{repo}/invitations/{invitation_id}
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var issues: Issues {
        Issues(path: path + "/issues")
    }
    
    public struct Issues {
        // /repos/{owner}/{repo}/issues
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }
    
    public struct Comments {
        // /repos/{owner}/{repo}/issues/comments
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues.Comments {
    public func commentID(_ commentID: String) -> WithCommentID {
        WithCommentID(path: path + "/" + commentID)
    }

    public struct WithCommentID {
        // /repos/{owner}/{repo}/issues/comments/{comment_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues.Comments.WithCommentID {
    public var reactions: Reactions {
        Reactions(path: path + "/reactions")
    }
    
    public struct Reactions {
        // /repos/{owner}/{repo}/issues/comments/{comment_id}/reactions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues.Comments.WithCommentID.Reactions {
    public func reactionID(_ reactionID: String) -> WithReactionID {
        WithReactionID(path: path + "/" + reactionID)
    }

    public struct WithReactionID {
        // /repos/{owner}/{repo}/issues/comments/{comment_id}/reactions/{reaction_id}
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues {
    public var events: Events {
        Events(path: path + "/events")
    }
    
    public struct Events {
        // /repos/{owner}/{repo}/issues/events
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues.Events {
    public func eventID(_ eventID: String) -> WithEventID {
        WithEventID(path: path + "/" + eventID)
    }

    public struct WithEventID {
        // /repos/{owner}/{repo}/issues/events/{event_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues {
    public func issueNumber(_ issueNumber: String) -> WithIssueNumber {
        WithIssueNumber(path: path + "/" + issueNumber)
    }

    public struct WithIssueNumber {
        // /repos/{owner}/{repo}/issues/{issue_number}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues.WithIssueNumber {
    public var assignees: Assignees {
        Assignees(path: path + "/assignees")
    }
    
    public struct Assignees {
        // /repos/{owner}/{repo}/issues/{issue_number}/assignees
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues.WithIssueNumber {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }
    
    public struct Comments {
        // /repos/{owner}/{repo}/issues/{issue_number}/comments
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues.WithIssueNumber {
    public var events: Events {
        Events(path: path + "/events")
    }
    
    public struct Events {
        // /repos/{owner}/{repo}/issues/{issue_number}/events
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues.WithIssueNumber {
    public var labels: Labels {
        Labels(path: path + "/labels")
    }
    
    public struct Labels {
        // /repos/{owner}/{repo}/issues/{issue_number}/labels
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues.WithIssueNumber.Labels {
    public func name(_ name: String) -> WithName {
        WithName(path: path + "/" + name)
    }

    public struct WithName {
        // /repos/{owner}/{repo}/issues/{issue_number}/labels/{name}
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues.WithIssueNumber {
    public var lock: Lock {
        Lock(path: path + "/lock")
    }
    
    public struct Lock {
        // /repos/{owner}/{repo}/issues/{issue_number}/lock
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues.WithIssueNumber {
    public var reactions: Reactions {
        Reactions(path: path + "/reactions")
    }
    
    public struct Reactions {
        // /repos/{owner}/{repo}/issues/{issue_number}/reactions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues.WithIssueNumber.Reactions {
    public func reactionID(_ reactionID: String) -> WithReactionID {
        WithReactionID(path: path + "/" + reactionID)
    }

    public struct WithReactionID {
        // /repos/{owner}/{repo}/issues/{issue_number}/reactions/{reaction_id}
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Issues.WithIssueNumber {
    public var timeline: Timeline {
        Timeline(path: path + "/timeline")
    }
    
    public struct Timeline {
        // /repos/{owner}/{repo}/issues/{issue_number}/timeline
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var keys: Keys {
        Keys(path: path + "/keys")
    }
    
    public struct Keys {
        // /repos/{owner}/{repo}/keys
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Keys {
    public func keyID(_ keyID: String) -> WithKeyID {
        WithKeyID(path: path + "/" + keyID)
    }

    public struct WithKeyID {
        // /repos/{owner}/{repo}/keys/{key_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var labels: Labels {
        Labels(path: path + "/labels")
    }
    
    public struct Labels {
        // /repos/{owner}/{repo}/labels
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Labels {
    public func name(_ name: String) -> WithName {
        WithName(path: path + "/" + name)
    }

    public struct WithName {
        // /repos/{owner}/{repo}/labels/{name}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var languages: Languages {
        Languages(path: path + "/languages")
    }
    
    public struct Languages {
        // /repos/{owner}/{repo}/languages
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var lfs: Lfs {
        Lfs(path: path + "/lfs")
    }
    
    public struct Lfs {
        // /repos/{owner}/{repo}/lfs
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var license: License {
        License(path: path + "/license")
    }
    
    public struct License {
        // /repos/{owner}/{repo}/license
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var mergeUpstream: MergeUpstream {
        MergeUpstream(path: path + "/merge-upstream")
    }
    
    public struct MergeUpstream {
        // /repos/{owner}/{repo}/merge-upstream
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var merges: Merges {
        Merges(path: path + "/merges")
    }
    
    public struct Merges {
        // /repos/{owner}/{repo}/merges
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var milestones: Milestones {
        Milestones(path: path + "/milestones")
    }
    
    public struct Milestones {
        // /repos/{owner}/{repo}/milestones
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Milestones {
    public func milestoneNumber(_ milestoneNumber: String) -> WithMilestoneNumber {
        WithMilestoneNumber(path: path + "/" + milestoneNumber)
    }

    public struct WithMilestoneNumber {
        // /repos/{owner}/{repo}/milestones/{milestone_number}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Milestones.WithMilestoneNumber {
    public var labels: Labels {
        Labels(path: path + "/labels")
    }
    
    public struct Labels {
        // /repos/{owner}/{repo}/milestones/{milestone_number}/labels
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var notifications: Notifications {
        Notifications(path: path + "/notifications")
    }
    
    public struct Notifications {
        // /repos/{owner}/{repo}/notifications
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var pages: Pages {
        Pages(path: path + "/pages")
    }
    
    public struct Pages {
        // /repos/{owner}/{repo}/pages
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pages {
    public var builds: Builds {
        Builds(path: path + "/builds")
    }
    
    public struct Builds {
        // /repos/{owner}/{repo}/pages/builds
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pages.Builds {
    public var latest: Latest {
        Latest(path: path + "/latest")
    }
    
    public struct Latest {
        // /repos/{owner}/{repo}/pages/builds/latest
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pages.Builds {
    public func buildID(_ buildID: String) -> WithBuildID {
        WithBuildID(path: path + "/" + buildID)
    }

    public struct WithBuildID {
        // /repos/{owner}/{repo}/pages/builds/{build_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pages {
    public var health: Health {
        Health(path: path + "/health")
    }
    
    public struct Health {
        // /repos/{owner}/{repo}/pages/health
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var projects: Projects {
        Projects(path: path + "/projects")
    }
    
    public struct Projects {
        // /repos/{owner}/{repo}/projects
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var pulls: Pulls {
        Pulls(path: path + "/pulls")
    }
    
    public struct Pulls {
        // /repos/{owner}/{repo}/pulls
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }
    
    public struct Comments {
        // /repos/{owner}/{repo}/pulls/comments
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.Comments {
    public func commentID(_ commentID: String) -> WithCommentID {
        WithCommentID(path: path + "/" + commentID)
    }

    public struct WithCommentID {
        // /repos/{owner}/{repo}/pulls/comments/{comment_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.Comments.WithCommentID {
    public var reactions: Reactions {
        Reactions(path: path + "/reactions")
    }
    
    public struct Reactions {
        // /repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.Comments.WithCommentID.Reactions {
    public func reactionID(_ reactionID: String) -> WithReactionID {
        WithReactionID(path: path + "/" + reactionID)
    }

    public struct WithReactionID {
        // /repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions/{reaction_id}
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls {
    public func pullNumber(_ pullNumber: String) -> WithPullNumber {
        WithPullNumber(path: path + "/" + pullNumber)
    }

    public struct WithPullNumber {
        // /repos/{owner}/{repo}/pulls/{pull_number}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.WithPullNumber {
    public var codespaces: Codespaces {
        Codespaces(path: path + "/codespaces")
    }
    
    public struct Codespaces {
        // /repos/{owner}/{repo}/pulls/{pull_number}/codespaces
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.WithPullNumber {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }
    
    public struct Comments {
        // /repos/{owner}/{repo}/pulls/{pull_number}/comments
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.WithPullNumber.Comments {
    public func commentID(_ commentID: String) -> WithCommentID {
        WithCommentID(path: path + "/" + commentID)
    }

    public struct WithCommentID {
        // /repos/{owner}/{repo}/pulls/{pull_number}/comments/{comment_id}
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.WithPullNumber.Comments.WithCommentID {
    public var replies: Replies {
        Replies(path: path + "/replies")
    }
    
    public struct Replies {
        // /repos/{owner}/{repo}/pulls/{pull_number}/comments/{comment_id}/replies
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.WithPullNumber {
    public var commits: Commits {
        Commits(path: path + "/commits")
    }
    
    public struct Commits {
        // /repos/{owner}/{repo}/pulls/{pull_number}/commits
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.WithPullNumber {
    public var files: Files {
        Files(path: path + "/files")
    }
    
    public struct Files {
        // /repos/{owner}/{repo}/pulls/{pull_number}/files
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.WithPullNumber {
    public var merge: Merge {
        Merge(path: path + "/merge")
    }
    
    public struct Merge {
        // /repos/{owner}/{repo}/pulls/{pull_number}/merge
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.WithPullNumber {
    public var requestedReviewers: RequestedReviewers {
        RequestedReviewers(path: path + "/requested_reviewers")
    }
    
    public struct RequestedReviewers {
        // /repos/{owner}/{repo}/pulls/{pull_number}/requested_reviewers
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.WithPullNumber {
    public var reviews: Reviews {
        Reviews(path: path + "/reviews")
    }
    
    public struct Reviews {
        // /repos/{owner}/{repo}/pulls/{pull_number}/reviews
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.WithPullNumber.Reviews {
    public func reviewID(_ reviewID: String) -> WithReviewID {
        WithReviewID(path: path + "/" + reviewID)
    }

    public struct WithReviewID {
        // /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.WithPullNumber.Reviews.WithReviewID {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }
    
    public struct Comments {
        // /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/comments
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.WithPullNumber.Reviews.WithReviewID {
    public var dismissals: Dismissals {
        Dismissals(path: path + "/dismissals")
    }
    
    public struct Dismissals {
        // /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/dismissals
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.WithPullNumber.Reviews.WithReviewID {
    public var events: Events {
        Events(path: path + "/events")
    }
    
    public struct Events {
        // /repos/{owner}/{repo}/pulls/{pull_number}/reviews/{review_id}/events
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Pulls.WithPullNumber {
    public var updateBranch: UpdateBranch {
        UpdateBranch(path: path + "/update-branch")
    }
    
    public struct UpdateBranch {
        // /repos/{owner}/{repo}/pulls/{pull_number}/update-branch
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var readme: Readme {
        Readme(path: path + "/readme")
    }
    
    public struct Readme {
        // /repos/{owner}/{repo}/readme
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Readme {
    public func dir(_ dir: String) -> WithDir {
        WithDir(path: path + "/" + dir)
    }

    public struct WithDir {
        // /repos/{owner}/{repo}/readme/{dir}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var releases: Releases {
        Releases(path: path + "/releases")
    }
    
    public struct Releases {
        // /repos/{owner}/{repo}/releases
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Releases {
    public var assets: Assets {
        Assets(path: path + "/assets")
    }
    
    public struct Assets {
        // /repos/{owner}/{repo}/releases/assets
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Releases.Assets {
    public func assetID(_ assetID: String) -> WithAssetID {
        WithAssetID(path: path + "/" + assetID)
    }

    public struct WithAssetID {
        // /repos/{owner}/{repo}/releases/assets/{asset_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Releases {
    public var generateNotes: GenerateNotes {
        GenerateNotes(path: path + "/generate-notes")
    }
    
    public struct GenerateNotes {
        // /repos/{owner}/{repo}/releases/generate-notes
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo.Releases {
    public var latest: Latest {
        Latest(path: path + "/latest")
    }
    
    public struct Latest {
        // /repos/{owner}/{repo}/releases/latest
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Releases {
    public var tags: Tags {
        Tags(path: path + "/tags")
    }
    
    public struct Tags {
        // /repos/{owner}/{repo}/releases/tags
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Releases.Tags {
    public func tag(_ tag: String) -> WithTag {
        WithTag(path: path + "/" + tag)
    }

    public struct WithTag {
        // /repos/{owner}/{repo}/releases/tags/{tag}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Releases {
    public func releaseID(_ releaseID: String) -> WithReleaseID {
        WithReleaseID(path: path + "/" + releaseID)
    }

    public struct WithReleaseID {
        // /repos/{owner}/{repo}/releases/{release_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Releases.WithReleaseID {
    public var assets: Assets {
        Assets(path: path + "/assets")
    }
    
    public struct Assets {
        // /repos/{owner}/{repo}/releases/{release_id}/assets
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Releases.WithReleaseID {
    public var reactions: Reactions {
        Reactions(path: path + "/reactions")
    }
    
    public struct Reactions {
        // /repos/{owner}/{repo}/releases/{release_id}/reactions
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var secretScanning: SecretScanning {
        SecretScanning(path: path + "/secret-scanning")
    }
    
    public struct SecretScanning {
        // /repos/{owner}/{repo}/secret-scanning
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.SecretScanning {
    public var alerts: Alerts {
        Alerts(path: path + "/alerts")
    }
    
    public struct Alerts {
        // /repos/{owner}/{repo}/secret-scanning/alerts
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.SecretScanning.Alerts {
    public func alertNumber(_ alertNumber: String) -> WithAlertNumber {
        WithAlertNumber(path: path + "/" + alertNumber)
    }

    public struct WithAlertNumber {
        // /repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var stargazers: Stargazers {
        Stargazers(path: path + "/stargazers")
    }
    
    public struct Stargazers {
        // /repos/{owner}/{repo}/stargazers
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var stats: Stats {
        Stats(path: path + "/stats")
    }
    
    public struct Stats {
        // /repos/{owner}/{repo}/stats
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Stats {
    public var codeFrequency: CodeFrequency {
        CodeFrequency(path: path + "/code_frequency")
    }
    
    public struct CodeFrequency {
        // /repos/{owner}/{repo}/stats/code_frequency
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Stats {
    public var commitActivity: CommitActivity {
        CommitActivity(path: path + "/commit_activity")
    }
    
    public struct CommitActivity {
        // /repos/{owner}/{repo}/stats/commit_activity
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Stats {
    public var contributors: Contributors {
        Contributors(path: path + "/contributors")
    }
    
    public struct Contributors {
        // /repos/{owner}/{repo}/stats/contributors
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Stats {
    public var participation: Participation {
        Participation(path: path + "/participation")
    }
    
    public struct Participation {
        // /repos/{owner}/{repo}/stats/participation
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Stats {
    public var punchCard: PunchCard {
        PunchCard(path: path + "/punch_card")
    }
    
    public struct PunchCard {
        // /repos/{owner}/{repo}/stats/punch_card
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var statuses: Statuses {
        Statuses(path: path + "/statuses")
    }
    
    public struct Statuses {
        // /repos/{owner}/{repo}/statuses
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Statuses {
    public func sha(_ sha: String) -> WithSha {
        WithSha(path: path + "/" + sha)
    }

    public struct WithSha {
        // /repos/{owner}/{repo}/statuses/{sha}
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var subscribers: Subscribers {
        Subscribers(path: path + "/subscribers")
    }
    
    public struct Subscribers {
        // /repos/{owner}/{repo}/subscribers
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var subscription: Subscription {
        Subscription(path: path + "/subscription")
    }
    
    public struct Subscription {
        // /repos/{owner}/{repo}/subscription
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var tags: Tags {
        Tags(path: path + "/tags")
    }
    
    public struct Tags {
        // /repos/{owner}/{repo}/tags
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var tarball: Tarball {
        Tarball(path: path + "/tarball")
    }
    
    public struct Tarball {
        // /repos/{owner}/{repo}/tarball
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Tarball {
    public func ref(_ ref: String) -> WithRef {
        WithRef(path: path + "/" + ref)
    }

    public struct WithRef {
        // /repos/{owner}/{repo}/tarball/{ref}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var teams: Teams {
        Teams(path: path + "/teams")
    }
    
    public struct Teams {
        // /repos/{owner}/{repo}/teams
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var topics: Topics {
        Topics(path: path + "/topics")
    }
    
    public struct Topics {
        // /repos/{owner}/{repo}/topics
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var traffic: Traffic {
        Traffic(path: path + "/traffic")
    }
    
    public struct Traffic {
        // /repos/{owner}/{repo}/traffic
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Traffic {
    public var clones: Clones {
        Clones(path: path + "/clones")
    }
    
    public struct Clones {
        // /repos/{owner}/{repo}/traffic/clones
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Traffic {
    public var popular: Popular {
        Popular(path: path + "/popular")
    }
    
    public struct Popular {
        // /repos/{owner}/{repo}/traffic/popular
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Traffic.Popular {
    public var paths: Paths {
        Paths(path: path + "/paths")
    }
    
    public struct Paths {
        // /repos/{owner}/{repo}/traffic/popular/paths
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Traffic.Popular {
    public var referrers: Referrers {
        Referrers(path: path + "/referrers")
    }
    
    public struct Referrers {
        // /repos/{owner}/{repo}/traffic/popular/referrers
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo.Traffic {
    public var views: Views {
        Views(path: path + "/views")
    }
    
    public struct Views {
        // /repos/{owner}/{repo}/traffic/views
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var transfer: Transfer {
        Transfer(path: path + "/transfer")
    }
    
    public struct Transfer {
        // /repos/{owner}/{repo}/transfer
        public let path: String


    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var vulnerabilityAlerts: VulnerabilityAlerts {
        VulnerabilityAlerts(path: path + "/vulnerability-alerts")
    }
    
    public struct VulnerabilityAlerts {
        // /repos/{owner}/{repo}/vulnerability-alerts
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos.WithOwner.WithRepo {
    public var zipball: Zipball {
        Zipball(path: path + "/zipball")
    }
    
    public struct Zipball {
        // /repos/{owner}/{repo}/zipball
        public let path: String
    }
}

extension Resources.Repos.WithOwner.WithRepo.Zipball {
    public func ref(_ ref: String) -> WithRef {
        WithRef(path: path + "/" + ref)
    }

    public struct WithRef {
        // /repos/{owner}/{repo}/zipball/{ref}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repos {
    public func templateOwner(_ templateOwner: String) -> WithTemplateOwner {
        WithTemplateOwner(path: path + "/" + templateOwner)
    }

    public struct WithTemplateOwner {
        // /repos/{template_owner}
        public let path: String
    }
}

extension Resources.Repos.WithTemplateOwner {
    public func templateRepo(_ templateRepo: String) -> WithTemplateRepo {
        WithTemplateRepo(path: path + "/" + templateRepo)
    }

    public struct WithTemplateRepo {
        // /repos/{template_owner}/{template_repo}
        public let path: String
    }
}

extension Resources.Repos.WithTemplateOwner.WithTemplateRepo {
    public var generate: Generate {
        Generate(path: path + "/generate")
    }
    
    public struct Generate {
        // /repos/{template_owner}/{template_repo}/generate
        public let path: String


    }
}

extension Resources {
    public static var repositories: Repositories {
        Repositories(path: "/repositories")
    }
    
    public struct Repositories {
        // /repositories
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repositories {
    public func repositoryID(_ repositoryID: String) -> WithRepositoryID {
        WithRepositoryID(path: path + "/" + repositoryID)
    }

    public struct WithRepositoryID {
        // /repositories/{repository_id}
        public let path: String
    }
}

extension Resources.Repositories.WithRepositoryID {
    public var environments: Environments {
        Environments(path: path + "/environments")
    }
    
    public struct Environments {
        // /repositories/{repository_id}/environments
        public let path: String
    }
}

extension Resources.Repositories.WithRepositoryID.Environments {
    public func environmentName(_ environmentName: String) -> WithEnvironmentName {
        WithEnvironmentName(path: path + "/" + environmentName)
    }

    public struct WithEnvironmentName {
        // /repositories/{repository_id}/environments/{environment_name}
        public let path: String
    }
}

extension Resources.Repositories.WithRepositoryID.Environments.WithEnvironmentName {
    public var secrets: Secrets {
        Secrets(path: path + "/secrets")
    }
    
    public struct Secrets {
        // /repositories/{repository_id}/environments/{environment_name}/secrets
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repositories.WithRepositoryID.Environments.WithEnvironmentName.Secrets {
    public var publicKey: PublicKey {
        PublicKey(path: path + "/public-key")
    }
    
    public struct PublicKey {
        // /repositories/{repository_id}/environments/{environment_name}/secrets/public-key
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Repositories.WithRepositoryID.Environments.WithEnvironmentName.Secrets {
    public func secretName(_ secretName: String) -> WithSecretName {
        WithSecretName(path: path + "/" + secretName)
    }

    public struct WithSecretName {
        // /repositories/{repository_id}/environments/{environment_name}/secrets/{secret_name}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var scim: Scim {
        Scim(path: "/scim")
    }
    
    public struct Scim {
        // /scim
        public let path: String
    }
}

extension Resources.Scim {
    public var v2: V2 {
        V2(path: path + "/v2")
    }
    
    public struct V2 {
        // /scim/v2
        public let path: String
    }
}

extension Resources.Scim.V2 {
    public var enterprises: Enterprises {
        Enterprises(path: path + "/enterprises")
    }
    
    public struct Enterprises {
        // /scim/v2/enterprises
        public let path: String
    }
}

extension Resources.Scim.V2.Enterprises {
    public func enterprise(_ enterprise: String) -> WithEnterprise {
        WithEnterprise(path: path + "/" + enterprise)
    }

    public struct WithEnterprise {
        // /scim/v2/enterprises/{enterprise}
        public let path: String
    }
}

extension Resources.Scim.V2.Enterprises.WithEnterprise {
    public var groups: Groups {
        Groups(path: path + "/Groups")
    }
    
    public struct Groups {
        // /scim/v2/enterprises/{enterprise}/Groups
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Scim.V2.Enterprises.WithEnterprise.Groups {
    public func scimGroupID(_ scimGroupID: String) -> WithScimGroupID {
        WithScimGroupID(path: path + "/" + scimGroupID)
    }

    public struct WithScimGroupID {
        // /scim/v2/enterprises/{enterprise}/Groups/{scim_group_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Scim.V2.Enterprises.WithEnterprise {
    public var users: Users {
        Users(path: path + "/Users")
    }
    
    public struct Users {
        // /scim/v2/enterprises/{enterprise}/Users
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Scim.V2.Enterprises.WithEnterprise.Users {
    public func scimUserID(_ scimUserID: String) -> WithScimUserID {
        WithScimUserID(path: path + "/" + scimUserID)
    }

    public struct WithScimUserID {
        // /scim/v2/enterprises/{enterprise}/Users/{scim_user_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Scim.V2 {
    public var organizations: Organizations {
        Organizations(path: path + "/organizations")
    }
    
    public struct Organizations {
        // /scim/v2/organizations
        public let path: String
    }
}

extension Resources.Scim.V2.Organizations {
    public func org(_ org: String) -> WithOrg {
        WithOrg(path: path + "/" + org)
    }

    public struct WithOrg {
        // /scim/v2/organizations/{org}
        public let path: String
    }
}

extension Resources.Scim.V2.Organizations.WithOrg {
    public var users: Users {
        Users(path: path + "/Users")
    }
    
    public struct Users {
        // /scim/v2/organizations/{org}/Users
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Scim.V2.Organizations.WithOrg.Users {
    public func scimUserID(_ scimUserID: String) -> WithScimUserID {
        WithScimUserID(path: path + "/" + scimUserID)
    }

    public struct WithScimUserID {
        // /scim/v2/organizations/{org}/Users/{scim_user_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var search: Search {
        Search(path: "/search")
    }
    
    public struct Search {
        // /search
        public let path: String
    }
}

extension Resources.Search {
    public var code: Code {
        Code(path: path + "/code")
    }
    
    public struct Code {
        // /search/code
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Search {
    public var commits: Commits {
        Commits(path: path + "/commits")
    }
    
    public struct Commits {
        // /search/commits
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Search {
    public var issues: Issues {
        Issues(path: path + "/issues")
    }
    
    public struct Issues {
        // /search/issues
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Search {
    public var labels: Labels {
        Labels(path: path + "/labels")
    }
    
    public struct Labels {
        // /search/labels
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Search {
    public var repositories: Repositories {
        Repositories(path: path + "/repositories")
    }
    
    public struct Repositories {
        // /search/repositories
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Search {
    public var topics: Topics {
        Topics(path: path + "/topics")
    }
    
    public struct Topics {
        // /search/topics
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Search {
    public var users: Users {
        Users(path: path + "/users")
    }
    
    public struct Users {
        // /search/users
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var teams: Teams {
        Teams(path: "/teams")
    }
    
    public struct Teams {
        // /teams
        public let path: String
    }
}

extension Resources.Teams {
    public func teamID(_ teamID: String) -> WithTeamID {
        WithTeamID(path: path + "/" + teamID)
    }

    public struct WithTeamID {
        // /teams/{team_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID {
    public var discussions: Discussions {
        Discussions(path: path + "/discussions")
    }
    
    public struct Discussions {
        // /teams/{team_id}/discussions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID.Discussions {
    public func discussionNumber(_ discussionNumber: String) -> WithDiscussionNumber {
        WithDiscussionNumber(path: path + "/" + discussionNumber)
    }

    public struct WithDiscussionNumber {
        // /teams/{team_id}/discussions/{discussion_number}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID.Discussions.WithDiscussionNumber {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }
    
    public struct Comments {
        // /teams/{team_id}/discussions/{discussion_number}/comments
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID.Discussions.WithDiscussionNumber.Comments {
    public func commentNumber(_ commentNumber: String) -> WithCommentNumber {
        WithCommentNumber(path: path + "/" + commentNumber)
    }

    public struct WithCommentNumber {
        // /teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID.Discussions.WithDiscussionNumber.Comments.WithCommentNumber {
    public var reactions: Reactions {
        Reactions(path: path + "/reactions")
    }
    
    public struct Reactions {
        // /teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}/reactions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID.Discussions.WithDiscussionNumber {
    public var reactions: Reactions {
        Reactions(path: path + "/reactions")
    }
    
    public struct Reactions {
        // /teams/{team_id}/discussions/{discussion_number}/reactions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID {
    public var invitations: Invitations {
        Invitations(path: path + "/invitations")
    }
    
    public struct Invitations {
        // /teams/{team_id}/invitations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID {
    public var members: Members {
        Members(path: path + "/members")
    }
    
    public struct Members {
        // /teams/{team_id}/members
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID.Members {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: path + "/" + username)
    }

    public struct WithUsername {
        // /teams/{team_id}/members/{username}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID {
    public var memberships: Memberships {
        Memberships(path: path + "/memberships")
    }
    
    public struct Memberships {
        // /teams/{team_id}/memberships
        public let path: String
    }
}

extension Resources.Teams.WithTeamID.Memberships {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: path + "/" + username)
    }

    public struct WithUsername {
        // /teams/{team_id}/memberships/{username}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID {
    public var projects: Projects {
        Projects(path: path + "/projects")
    }
    
    public struct Projects {
        // /teams/{team_id}/projects
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID.Projects {
    public func projectID(_ projectID: String) -> WithProjectID {
        WithProjectID(path: path + "/" + projectID)
    }

    public struct WithProjectID {
        // /teams/{team_id}/projects/{project_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID {
    public var repos: Repos {
        Repos(path: path + "/repos")
    }
    
    public struct Repos {
        // /teams/{team_id}/repos
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID.Repos {
    public func owner(_ owner: String) -> WithOwner {
        WithOwner(path: path + "/" + owner)
    }

    public struct WithOwner {
        // /teams/{team_id}/repos/{owner}
        public let path: String
    }
}

extension Resources.Teams.WithTeamID.Repos.WithOwner {
    public func repo(_ repo: String) -> WithRepo {
        WithRepo(path: path + "/" + repo)
    }

    public struct WithRepo {
        // /teams/{team_id}/repos/{owner}/{repo}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID {
    public var teamSync: TeamSync {
        TeamSync(path: path + "/team-sync")
    }
    
    public struct TeamSync {
        // /teams/{team_id}/team-sync
        public let path: String
    }
}

extension Resources.Teams.WithTeamID.TeamSync {
    public var groupMappings: GroupMappings {
        GroupMappings(path: path + "/group-mappings")
    }
    
    public struct GroupMappings {
        // /teams/{team_id}/team-sync/group-mappings
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Teams.WithTeamID {
    public var teams: Teams {
        Teams(path: path + "/teams")
    }
    
    public struct Teams {
        // /teams/{team_id}/teams
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var user: User {
        User(path: "/user")
    }
    
    public struct User {
        // /user
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var blocks: Blocks {
        Blocks(path: path + "/blocks")
    }
    
    public struct Blocks {
        // /user/blocks
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Blocks {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: path + "/" + username)
    }

    public struct WithUsername {
        // /user/blocks/{username}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var codespaces: Codespaces {
        Codespaces(path: path + "/codespaces")
    }
    
    public struct Codespaces {
        // /user/codespaces
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Codespaces {
    public var secrets: Secrets {
        Secrets(path: path + "/secrets")
    }
    
    public struct Secrets {
        // /user/codespaces/secrets
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Codespaces.Secrets {
    public var publicKey: PublicKey {
        PublicKey(path: path + "/public-key")
    }
    
    public struct PublicKey {
        // /user/codespaces/secrets/public-key
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Codespaces.Secrets {
    public func secretName(_ secretName: String) -> WithSecretName {
        WithSecretName(path: path + "/" + secretName)
    }

    public struct WithSecretName {
        // /user/codespaces/secrets/{secret_name}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Codespaces.Secrets.WithSecretName {
    public var repositories: Repositories {
        Repositories(path: path + "/repositories")
    }
    
    public struct Repositories {
        // /user/codespaces/secrets/{secret_name}/repositories
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Codespaces.Secrets.WithSecretName.Repositories {
    public func repositoryID(_ repositoryID: String) -> WithRepositoryID {
        WithRepositoryID(path: path + "/" + repositoryID)
    }

    public struct WithRepositoryID {
        // /user/codespaces/secrets/{secret_name}/repositories/{repository_id}
        public let path: String


    }
}

extension Resources.User.Codespaces {
    public func codespaceName(_ codespaceName: String) -> WithCodespaceName {
        WithCodespaceName(path: path + "/" + codespaceName)
    }

    public struct WithCodespaceName {
        // /user/codespaces/{codespace_name}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Codespaces.WithCodespaceName {
    public var machines: Machines {
        Machines(path: path + "/machines")
    }
    
    public struct Machines {
        // /user/codespaces/{codespace_name}/machines
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Codespaces.WithCodespaceName {
    public var start: Start {
        Start(path: path + "/start")
    }
    
    public struct Start {
        // /user/codespaces/{codespace_name}/start
        public let path: String


    }
}

extension Resources.User.Codespaces.WithCodespaceName {
    public var stop: Stop {
        Stop(path: path + "/stop")
    }
    
    public struct Stop {
        // /user/codespaces/{codespace_name}/stop
        public let path: String


    }
}

extension Resources.User {
    public var email: Email {
        Email(path: path + "/email")
    }
    
    public struct Email {
        // /user/email
        public let path: String
    }
}

extension Resources.User.Email {
    public var visibility: Visibility {
        Visibility(path: path + "/visibility")
    }
    
    public struct Visibility {
        // /user/email/visibility
        public let path: String


    }
}

extension Resources.User {
    public var emails: Emails {
        Emails(path: path + "/emails")
    }
    
    public struct Emails {
        // /user/emails
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var followers: Followers {
        Followers(path: path + "/followers")
    }
    
    public struct Followers {
        // /user/followers
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var following: Following {
        Following(path: path + "/following")
    }
    
    public struct Following {
        // /user/following
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Following {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: path + "/" + username)
    }

    public struct WithUsername {
        // /user/following/{username}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var gpgKeys: GpgKeys {
        GpgKeys(path: path + "/gpg_keys")
    }
    
    public struct GpgKeys {
        // /user/gpg_keys
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.GpgKeys {
    public func gpgKeyID(_ gpgKeyID: String) -> WithGpgKeyID {
        WithGpgKeyID(path: path + "/" + gpgKeyID)
    }

    public struct WithGpgKeyID {
        // /user/gpg_keys/{gpg_key_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var installations: Installations {
        Installations(path: path + "/installations")
    }
    
    public struct Installations {
        // /user/installations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Installations {
    public func installationID(_ installationID: String) -> WithInstallationID {
        WithInstallationID(path: path + "/" + installationID)
    }

    public struct WithInstallationID {
        // /user/installations/{installation_id}
        public let path: String
    }
}

extension Resources.User.Installations.WithInstallationID {
    public var repositories: Repositories {
        Repositories(path: path + "/repositories")
    }
    
    public struct Repositories {
        // /user/installations/{installation_id}/repositories
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Installations.WithInstallationID.Repositories {
    public func repositoryID(_ repositoryID: String) -> WithRepositoryID {
        WithRepositoryID(path: path + "/" + repositoryID)
    }

    public struct WithRepositoryID {
        // /user/installations/{installation_id}/repositories/{repository_id}
        public let path: String


    }
}

extension Resources.User {
    public var interactionLimits: InteractionLimits {
        InteractionLimits(path: path + "/interaction-limits")
    }
    
    public struct InteractionLimits {
        // /user/interaction-limits
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var issues: Issues {
        Issues(path: path + "/issues")
    }
    
    public struct Issues {
        // /user/issues
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var keys: Keys {
        Keys(path: path + "/keys")
    }
    
    public struct Keys {
        // /user/keys
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Keys {
    public func keyID(_ keyID: String) -> WithKeyID {
        WithKeyID(path: path + "/" + keyID)
    }

    public struct WithKeyID {
        // /user/keys/{key_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var marketplacePurchases: MarketplacePurchases {
        MarketplacePurchases(path: path + "/marketplace_purchases")
    }
    
    public struct MarketplacePurchases {
        // /user/marketplace_purchases
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.MarketplacePurchases {
    public var stubbed: Stubbed {
        Stubbed(path: path + "/stubbed")
    }
    
    public struct Stubbed {
        // /user/marketplace_purchases/stubbed
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var memberships: Memberships {
        Memberships(path: path + "/memberships")
    }
    
    public struct Memberships {
        // /user/memberships
        public let path: String
    }
}

extension Resources.User.Memberships {
    public var orgs: Orgs {
        Orgs(path: path + "/orgs")
    }
    
    public struct Orgs {
        // /user/memberships/orgs
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Memberships.Orgs {
    public func org(_ org: String) -> WithOrg {
        WithOrg(path: path + "/" + org)
    }

    public struct WithOrg {
        // /user/memberships/orgs/{org}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var migrations: Migrations {
        Migrations(path: path + "/migrations")
    }
    
    public struct Migrations {
        // /user/migrations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Migrations {
    public func migrationID(_ migrationID: String) -> WithMigrationID {
        WithMigrationID(path: path + "/" + migrationID)
    }

    public struct WithMigrationID {
        // /user/migrations/{migration_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Migrations.WithMigrationID {
    public var archive: Archive {
        Archive(path: path + "/archive")
    }
    
    public struct Archive {
        // /user/migrations/{migration_id}/archive
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Migrations.WithMigrationID {
    public var repos: Repos {
        Repos(path: path + "/repos")
    }
    
    public struct Repos {
        // /user/migrations/{migration_id}/repos
        public let path: String
    }
}

extension Resources.User.Migrations.WithMigrationID.Repos {
    public func repoName(_ repoName: String) -> WithRepoName {
        WithRepoName(path: path + "/" + repoName)
    }

    public struct WithRepoName {
        // /user/migrations/{migration_id}/repos/{repo_name}
        public let path: String
    }
}

extension Resources.User.Migrations.WithMigrationID.Repos.WithRepoName {
    public var lock: Lock {
        Lock(path: path + "/lock")
    }
    
    public struct Lock {
        // /user/migrations/{migration_id}/repos/{repo_name}/lock
        public let path: String


    }
}

extension Resources.User.Migrations.WithMigrationID {
    public var repositories: Repositories {
        Repositories(path: path + "/repositories")
    }
    
    public struct Repositories {
        // /user/migrations/{migration_id}/repositories
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var orgs: Orgs {
        Orgs(path: path + "/orgs")
    }
    
    public struct Orgs {
        // /user/orgs
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var packages: Packages {
        Packages(path: path + "/packages")
    }
    
    public struct Packages {
        // /user/packages
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Packages {
    public func packageType(_ packageType: String) -> WithPackageType {
        WithPackageType(path: path + "/" + packageType)
    }

    public struct WithPackageType {
        // /user/packages/{package_type}
        public let path: String
    }
}

extension Resources.User.Packages.WithPackageType {
    public func packageName(_ packageName: String) -> WithPackageName {
        WithPackageName(path: path + "/" + packageName)
    }

    public struct WithPackageName {
        // /user/packages/{package_type}/{package_name}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Packages.WithPackageType.WithPackageName {
    public var restore: Restore {
        Restore(path: path + "/restore")
    }
    
    public struct Restore {
        // /user/packages/{package_type}/{package_name}/restore
        public let path: String


    }
}

extension Resources.User.Packages.WithPackageType.WithPackageName {
    public var versions: Versions {
        Versions(path: path + "/versions")
    }
    
    public struct Versions {
        // /user/packages/{package_type}/{package_name}/versions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Packages.WithPackageType.WithPackageName.Versions {
    public func packageVersionID(_ packageVersionID: String) -> WithPackageVersionID {
        WithPackageVersionID(path: path + "/" + packageVersionID)
    }

    public struct WithPackageVersionID {
        // /user/packages/{package_type}/{package_name}/versions/{package_version_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Packages.WithPackageType.WithPackageName.Versions.WithPackageVersionID {
    public var restore: Restore {
        Restore(path: path + "/restore")
    }
    
    public struct Restore {
        // /user/packages/{package_type}/{package_name}/versions/{package_version_id}/restore
        public let path: String


    }
}

extension Resources.User {
    public var projects: Projects {
        Projects(path: path + "/projects")
    }
    
    public struct Projects {
        // /user/projects
        public let path: String


    }
}

extension Resources.User {
    public var publicEmails: PublicEmails {
        PublicEmails(path: path + "/public_emails")
    }
    
    public struct PublicEmails {
        // /user/public_emails
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var repos: Repos {
        Repos(path: path + "/repos")
    }
    
    public struct Repos {
        // /user/repos
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var repositoryInvitations: RepositoryInvitations {
        RepositoryInvitations(path: path + "/repository_invitations")
    }
    
    public struct RepositoryInvitations {
        // /user/repository_invitations
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.RepositoryInvitations {
    public func invitationID(_ invitationID: String) -> WithInvitationID {
        WithInvitationID(path: path + "/" + invitationID)
    }

    public struct WithInvitationID {
        // /user/repository_invitations/{invitation_id}
        public let path: String


    }
}

extension Resources.User {
    public var starred: Starred {
        Starred(path: path + "/starred")
    }
    
    public struct Starred {
        // /user/starred
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User.Starred {
    public func owner(_ owner: String) -> WithOwner {
        WithOwner(path: path + "/" + owner)
    }

    public struct WithOwner {
        // /user/starred/{owner}
        public let path: String
    }
}

extension Resources.User.Starred.WithOwner {
    public func repo(_ repo: String) -> WithRepo {
        WithRepo(path: path + "/" + repo)
    }

    public struct WithRepo {
        // /user/starred/{owner}/{repo}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var subscriptions: Subscriptions {
        Subscriptions(path: path + "/subscriptions")
    }
    
    public struct Subscriptions {
        // /user/subscriptions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.User {
    public var teams: Teams {
        Teams(path: path + "/teams")
    }
    
    public struct Teams {
        // /user/teams
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var users: Users {
        Users(path: "/users")
    }
    
    public struct Users {
        // /users
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: path + "/" + username)
    }

    public struct WithUsername {
        // /users/{username}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var events: Events {
        Events(path: path + "/events")
    }
    
    public struct Events {
        // /users/{username}/events
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername.Events {
    public var orgs: Orgs {
        Orgs(path: path + "/orgs")
    }
    
    public struct Orgs {
        // /users/{username}/events/orgs
        public let path: String
    }
}

extension Resources.Users.WithUsername.Events.Orgs {
    public func org(_ org: String) -> WithOrg {
        WithOrg(path: path + "/" + org)
    }

    public struct WithOrg {
        // /users/{username}/events/orgs/{org}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername.Events {
    public var `public`: Public {
        Public(path: path + "/public")
    }
    
    public struct Public {
        // /users/{username}/events/public
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var followers: Followers {
        Followers(path: path + "/followers")
    }
    
    public struct Followers {
        // /users/{username}/followers
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var following: Following {
        Following(path: path + "/following")
    }
    
    public struct Following {
        // /users/{username}/following
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername.Following {
    public func targetUser(_ targetUser: String) -> WithTargetUser {
        WithTargetUser(path: path + "/" + targetUser)
    }

    public struct WithTargetUser {
        // /users/{username}/following/{target_user}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var gists: Gists {
        Gists(path: path + "/gists")
    }
    
    public struct Gists {
        // /users/{username}/gists
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var gpgKeys: GpgKeys {
        GpgKeys(path: path + "/gpg_keys")
    }
    
    public struct GpgKeys {
        // /users/{username}/gpg_keys
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var hovercard: Hovercard {
        Hovercard(path: path + "/hovercard")
    }
    
    public struct Hovercard {
        // /users/{username}/hovercard
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var installation: Installation {
        Installation(path: path + "/installation")
    }
    
    public struct Installation {
        // /users/{username}/installation
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var keys: Keys {
        Keys(path: path + "/keys")
    }
    
    public struct Keys {
        // /users/{username}/keys
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var orgs: Orgs {
        Orgs(path: path + "/orgs")
    }
    
    public struct Orgs {
        // /users/{username}/orgs
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var packages: Packages {
        Packages(path: path + "/packages")
    }
    
    public struct Packages {
        // /users/{username}/packages
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername.Packages {
    public func packageType(_ packageType: String) -> WithPackageType {
        WithPackageType(path: path + "/" + packageType)
    }

    public struct WithPackageType {
        // /users/{username}/packages/{package_type}
        public let path: String
    }
}

extension Resources.Users.WithUsername.Packages.WithPackageType {
    public func packageName(_ packageName: String) -> WithPackageName {
        WithPackageName(path: path + "/" + packageName)
    }

    public struct WithPackageName {
        // /users/{username}/packages/{package_type}/{package_name}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername.Packages.WithPackageType.WithPackageName {
    public var restore: Restore {
        Restore(path: path + "/restore")
    }
    
    public struct Restore {
        // /users/{username}/packages/{package_type}/{package_name}/restore
        public let path: String


    }
}

extension Resources.Users.WithUsername.Packages.WithPackageType.WithPackageName {
    public var versions: Versions {
        Versions(path: path + "/versions")
    }
    
    public struct Versions {
        // /users/{username}/packages/{package_type}/{package_name}/versions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername.Packages.WithPackageType.WithPackageName.Versions {
    public func packageVersionID(_ packageVersionID: String) -> WithPackageVersionID {
        WithPackageVersionID(path: path + "/" + packageVersionID)
    }

    public struct WithPackageVersionID {
        // /users/{username}/packages/{package_type}/{package_name}/versions/{package_version_id}
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername.Packages.WithPackageType.WithPackageName.Versions.WithPackageVersionID {
    public var restore: Restore {
        Restore(path: path + "/restore")
    }
    
    public struct Restore {
        // /users/{username}/packages/{package_type}/{package_name}/versions/{package_version_id}/restore
        public let path: String


    }
}

extension Resources.Users.WithUsername {
    public var projects: Projects {
        Projects(path: path + "/projects")
    }
    
    public struct Projects {
        // /users/{username}/projects
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var receivedEvents: ReceivedEvents {
        ReceivedEvents(path: path + "/received_events")
    }
    
    public struct ReceivedEvents {
        // /users/{username}/received_events
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername.ReceivedEvents {
    public var `public`: Public {
        Public(path: path + "/public")
    }
    
    public struct Public {
        // /users/{username}/received_events/public
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var repos: Repos {
        Repos(path: path + "/repos")
    }
    
    public struct Repos {
        // /users/{username}/repos
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var settings: Settings {
        Settings(path: path + "/settings")
    }
    
    public struct Settings {
        // /users/{username}/settings
        public let path: String
    }
}

extension Resources.Users.WithUsername.Settings {
    public var billing: Billing {
        Billing(path: path + "/billing")
    }
    
    public struct Billing {
        // /users/{username}/settings/billing
        public let path: String
    }
}

extension Resources.Users.WithUsername.Settings.Billing {
    public var actions: Actions {
        Actions(path: path + "/actions")
    }
    
    public struct Actions {
        // /users/{username}/settings/billing/actions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername.Settings.Billing {
    public var packages: Packages {
        Packages(path: path + "/packages")
    }
    
    public struct Packages {
        // /users/{username}/settings/billing/packages
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername.Settings.Billing {
    public var sharedStorage: SharedStorage {
        SharedStorage(path: path + "/shared-storage")
    }
    
    public struct SharedStorage {
        // /users/{username}/settings/billing/shared-storage
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var starred: Starred {
        Starred(path: path + "/starred")
    }
    
    public struct Starred {
        // /users/{username}/starred
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources.Users.WithUsername {
    public var subscriptions: Subscriptions {
        Subscriptions(path: path + "/subscriptions")
    }
    
    public struct Subscriptions {
        // /users/{username}/subscriptions
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Resources {
    public static var zen: Zen {
        Zen(path: "/zen")
    }
    
    public struct Zen {
        // /zen
        public let path: String

        public func get() -> Request<Void> {
            .get(path)
        }
    }
}

