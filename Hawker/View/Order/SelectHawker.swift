//
//  SelectHawker.swift
//  hawker
//
//  Created by Jovan Wee on 30/6/24.
//

import SwiftUI

struct SelectHawker: View {
    var body: some View {

        
            NavigationStack {
                List(hawkers) { hawker in
                    NavigationLink {
                        HawkerDetail(hawker: hawker)
                        
                    } label: {
                        HawkerRow(hawker: hawker)
                    }
                }
                .navigationTitle("Select Hawker Centre")
                
            }
        
        }
    
}

#Preview {
    SelectHawker()
}
