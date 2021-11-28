// The MIT License (MIT)
//
// Copyright (c) 2021 Alexander Grebenyuk (github.com/kean).

import XCTest
import Mocker
@testable import APIClient
@testable import OctoKit

final class SchemasTests: XCTestCase {
    func testPublicUser() throws {
        // WHEN
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601

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
}

private let formatter = ISO8601DateFormatter()
