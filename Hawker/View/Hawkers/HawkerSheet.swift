//
//  HawkerSheet.swift
//  hawker
//
//  Created by Jovan Wee on 9/6/24.
//

import SwiftUI

struct HawkerSheet: View {
    var hawker: Hawker
    
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(alignment: .leading) {
                    Text(hawker.name)
                        .font(.title)
                    
                    
                    HStack {
                        Text(hawker.category)
                        Spacer()
                        //Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider()
                    
                    Text("Address:")
                        .font(.title2)
                    Text(hawker.address + "\n")
                     .foregroundStyle(.secondary)
                    //Text("About")
                    //    .font(.title2)
                    //Text(hawker.description)
                    Text("Notice:")
                        .font(.title2)
                    Text("Hawker Centre will be closed for cleaning from 12 July to 15 July")
                        .foregroundStyle(.secondary)
                    
                    Text("\n")
                    
                    NavigationLink(destination: HawkerDetail(hawker: hawker)
                        
                    ) {
                        
                        Text("View Detail")
                    }
                    
                    
                }
                .padding()
            }
            
            
        }
        .navigationTitle(hawker.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HawkerSheet(hawker: hawkers[3])
}
