//
//  SidebarNavigationView.swift
//  SimpleDocApp
//
//  Created by James Dempsey on 7/23/20.
//

import SwiftUI

struct SidebarNavigationView: View {
    @Binding var items: [SimpleItem]
    
    var body: some View {
        NavigationView() {
            // Using indexed() as described in macOS Catalina and iOS 13 Release Notes
            List(items.indexed(), id:\.1.id) { (index, item) in
                NavigationLink(destination: DetailView(item: $items[index])) {
                    VStack(alignment: .leading) {
                        Text(item.name)
                        Text("\(item.simpleValue)")
                            .foregroundColor(.secondary)
                            .font(.caption)
                    }.padding([.top, .bottom])
                }
            }
            .listStyle(SidebarListStyle())
            Group {
                Text("Select An Item")
            }
            .frame(minWidth: 200, maxWidth: .infinity, minHeight: 500, maxHeight: .infinity)
        }
        .navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

struct SidebarNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarNavigationView(items: .constant(SimpleItem.initialItems))
    }
}
