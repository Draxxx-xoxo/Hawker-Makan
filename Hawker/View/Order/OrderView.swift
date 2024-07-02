//
//  OrderView.swift
//  hawker
//
//  Created by Jovan Wee on 1/7/24.
//

import SwiftUI

struct OrderView: View {
    var hawker: Hawker
    
    var body: some View {
        NavigationSplitView {
            Text("Hello, World!")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    OrderView(hawker: hawkers[0])
}
