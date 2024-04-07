//
//  TestDownloader.swift
//  Earthquakes
//
//  Created by Joy Banerjee on 07/04/24.
//

import Foundation

class TestDownloader: HTTPDataDownloader {
    func httpData(from: URL) async throws -> Data {
//        fatalError("Unimplemented")
        try await Task.sleep(nanoseconds: UInt64.random(in: 100_000_000...500_000_000))
        return testQuakesData
    }
}
