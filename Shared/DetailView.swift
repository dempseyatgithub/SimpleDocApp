//
//  DetailView.swift
//  SimpleDocApp
//
//  Created by James Dempsey on 7/23/20.
//

import SwiftUI

struct DetailView: View {
    @Binding var item: SimpleItem
    
    var body: some View {
        Form {
            Section {
                #if os(iOS)
                Text("Item Value: \(item.simpleValue)")
                Stepper("Item Value", value: $item.simpleValue, in: 1...10)
                #else
                Stepper("Item Value: \(item.simpleValue)", value: $item.simpleValue, in: 1...10)
                    .fixedSize()
                #endif
            }
        }
        .frame(minWidth: 200, maxWidth: .infinity, minHeight: 500, maxHeight: .infinity)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: .constant(SimpleItem()))
    }
}
