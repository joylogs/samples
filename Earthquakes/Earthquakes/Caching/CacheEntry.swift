//
//  CacheEntry.swift
//  Earthquakes
//
//  Created by Joy Banerjee on 09/04/24.
//

import Foundation

enum CacheEntry {
    case inProgress(Task<QuakeLocation, Error>)
    case ready(QuakeLocation)
}
