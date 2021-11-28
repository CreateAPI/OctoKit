// The MIT License (MIT)
//
// Copyright (c) 2021 Alexander Grebenyuk (github.com/kean).

import XCTest

func json(named name: String) -> Data {
    let url = Bundle.module.url(forResource: name, withExtension: "json")
    return try! Data(contentsOf: url!)
}
