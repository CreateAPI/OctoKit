// The MIT License (MIT)
//
// Copyright (c) 2021 Alexander Grebenyuk (github.com/kean).

import XCTest
import Mocker
@testable import APIClient
@testable import OctoKit

final class PathsTests: XCTestCase {
    var client: APIClient!
    
    override func setUp() {
        super.setUp()
        
        let configuration = URLSessionConfiguration.default
        configuration.protocolClasses = [MockingURLProtocol.self]

        client = APIClient(host: "api.github.com", configuration: configuration)
    }
  
    func testLoadingUser() async throws {
        // GIVEN
        let url = URL(string: "https://api.github.com/users/kean")!
        Mock(url: url, dataType: .json, statusCode: 200, data: [
            .get: json(named: "users-kean")
        ]).register()

        // WHEN
        let user = try await client.value(for: Paths.users.username("kean").get())

        // THEN
        guard case .publicUser(let user) = user else {
            return XCTFail()
        }
        
        XCTAssertEqual(user.login, "kean")
        XCTAssertEqual(user.id, 1567433)
        XCTAssertEqual(user.nodeID, "MDQ6VXNlcjE1Njc0MzM=")
        XCTAssertEqual(user.avatarURL, URL(string: "https://avatars.githubusercontent.com/u/1567433?v=4"))
        XCTAssertEqual(user.gravatarID, "")
        XCTAssertEqual(user.url, URL(string: "https://api.github.com/users/kean"))
        XCTAssertEqual(user.htmlURL, URL(string: "https://github.com/kean"))
        XCTAssertEqual(user.followersURL, URL(string: "https://api.github.com/users/kean/followers"))
        XCTAssertEqual(user.followingURL, "https://api.github.com/users/kean/following{/other_user}")
    }
    
    func testPaths() {
        XCTAssertEqual(Paths.root.get().path, "/")
        XCTAssertEqual(Paths.app.get().path, "/app")
        XCTAssertEqual(Paths.appManifests.code("123").conversions.path, "/app-manifests/123/conversions")
        XCTAssertEqual(Paths.networks.owner("kean").repo("nuke").events.path, "/networks/kean/nuke/events")
    }
}
