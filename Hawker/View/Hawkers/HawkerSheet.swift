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
                //Text("About")
                //    .font(.title2)
                //Text(hawker.description)
                Text("Notice:")
                    .font(.title2)
                
                Divider()
                
                Text("Stalls:")
                    .font(.title2)
                
                
                ForEach(hawker.foodStalls) { foodstall in
                    NavigationLink {
                        StallDetail(foodstall: foodstall)
                        
                    } label: {
                        StallRow(foodstall: foodstall)
                    }
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
