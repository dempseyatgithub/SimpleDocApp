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

struct SimpleDocAppDocument: FileDocument, Codable {
    var items: [SimpleItem]

    init() {
        self.items = SimpleItem.initialItems
    }

    static var readableContentTypes: [UTType] { [.simpleDocument] }

    init(fileWrapper: FileWrapper, contentType: UTType) throws {
        let data = fileWrapper.regularFileContents!
        self = try JSONDecoder().decode(Self.self, from: data)
    }
    
    func write(to fileWrapper: inout FileWrapper, contentType: UTType) throws {
        let data = try JSONEncoder().encode(self)
        fileWrapper = FileWrapper(regularFileWithContents: data)
    }
    
}
