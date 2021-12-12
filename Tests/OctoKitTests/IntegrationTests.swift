// The MIT License (MIT)
//
// Copyright (c) 2021 Alexander Grebenyuk (github.com/kean).

import XCTest
@testable import APIClient
@testable import OctoKit

final class IntegrationTests: XCTestCase {
    let client = APIClient(host: "api.github.com", delegate: GitHubClientDelegate())
    
    // TODO: Make sure to replace the token below!
    func _testAnythingYouWant() async throws {
        let user = try await client.value(for: Paths.user.get)
        print(user)
    }
}

private final class GitHubClientDelegate: APIClientDelegate {
    func client(_ client: APIClient, willSendRequest request: inout URLRequest) {
        // Authenticate using personal access token
        // More about authentication: https://docs.github.com/en/rest/overview/resources-in-the-rest-api#authentication
        let token = "your_token_here".data(using: .utf8)!.base64EncodedString()
        request.setValue("Basic \(token)", forHTTPHeaderField: "Authorization")
    }
}
