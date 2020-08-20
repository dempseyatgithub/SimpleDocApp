//
//  SimpleDocAppDocument.swift
//  Shared
//
//  Created by James Dempsey on 7/29/20.
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static let simpleDocument = UTType(exportedAs: "com.example.simple-document", conformingTo: .json)
}

struct SimpleDocAppDocument: FileDocument {
    var items: [SimpleItem]

    init() {
        self.items = SimpleItem.initialItems
    }

    static var readableContentTypes: [UTType] { [.simpleDocument] }
    
    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents,
              let array = try? JSONDecoder().decode([SimpleItem].self, from: data)
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        items = array
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let data = try JSONEncoder().encode(items)
        return FileWrapper(regularFileWithContents: data)
    }
    
}
