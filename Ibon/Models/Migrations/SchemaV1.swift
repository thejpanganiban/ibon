//
//  SchemaV1.swift
//  Ibon
//
//  Created by Jesse Panganiban on 3/28/25.
//

import Foundation
import SwiftData

// SchemaV1
//   Item
//

// SchemaV2
//   Item -> Book
//   Category

// SchemaV3

enum SchemaV1: VersionedSchema {
    
    static var models: [any PersistentModel.Type] {
        [Item.self]
    }
    
    static var versionIdentifier: Schema.Version = .init(1, 0, 0)
}
