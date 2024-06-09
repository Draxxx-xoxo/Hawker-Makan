import SwiftUI

struct HawkerDetail: View {
    var hawker: Hawker
    //var foodstalls: Hawker.Foodstalls
    
    var body: some View {
        NavigationStack{
        ScrollView {
            SpecificMapView(coordinate: hawker.locationCoordinate, name: hawker.name)
                .frame(height: 300)
    
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
    HawkerDetail(hawker: hawkers[3])
    //ContentView()
}
