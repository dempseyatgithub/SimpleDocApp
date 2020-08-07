//
//  ContentView.swift
//  Shared
//
//  Created by James Dempsey on 7/29/20.
//

import SwiftUI

struct ContentView: View {
        @Binding var document: SimpleDocAppDocument
    
    var body: some View {
        SidebarNavigationView(items: $document.items)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(SimpleDocAppDocument()))
    }
}
