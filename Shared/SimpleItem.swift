//
//  SimpleItem.swift
//  SimpleDocApp
//
//  Created by James Dempsey on 7/29/20.
//

import Foundation

struct SimpleItem: Codable, Identifiable {
    let id: UUID
    let name: String
    var simpleValue: Int
    
    static var initialItems: [SimpleItem] {
        [
            SimpleItem(id: UUID(), name: "Item 1", simpleValue: 1),
            SimpleItem(id: UUID(), name: "Item 2", simpleValue: 2),
            SimpleItem(id: UUID(), name: "Item 3", simpleValue: 3),
            SimpleItem(id: UUID(), name: "Item 4", simpleValue: 4),
            SimpleItem(id: UUID(), name: "Item 5", simpleValue: 5),
        ]
    }
}

extension SimpleItem {
    init() {
        self.init(id: UUID(), name: "New Item", simpleValue: 3)
    }
}
