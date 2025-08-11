//
//  Element.swift
//  PeriodicTable
//
//  Created by miguel on 11/8/25.
//

import Foundation

struct Element: Codable, Identifiable {
    let id: Int
    let name: String
    let symbol: String
    let atomicMass: Double
    let melting: Int?
    let boiling: Int?
    let yearDiscovery: Int?
    let description: String
}

struct Elements: Codable {
    let elements: [Element]
}
