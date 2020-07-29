//
//  SimpleDocAppApp.swift
//  Shared
//
//  Created by James Dempsey on 7/29/20.
//

import SwiftUI

@main
struct SimpleDocAppApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: SimpleDocAppDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
