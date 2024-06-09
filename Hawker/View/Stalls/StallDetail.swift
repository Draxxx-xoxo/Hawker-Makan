import SwiftUI

struct StallDetail: View {
    var foodstall: Hawker.Foodstalls
    
    var body: some View {
        ScrollView {
            
            CircleImage(image: foodstall.image)
                //.offset(y: -130)
                //.padding(.bottom, -130)
            
            VStack() {
                Text(foodstall.hname + " " + foodstall.stallNumber)
                    .font(.title)
                
                Spacer()
                Spacer()
                
                Text("Opening Hours")
                    .font(.title2)
                HStack {
                    Text("Monday:")
                    Text(foodstall.openingHours.monday)
                }
                HStack {
                    Text("Tuesday:")
                    Text(foodstall.openingHours.tuesday)
                }
                HStack {
                    Text("Wednesday:")
                    Text(foodstall.openingHours.wednesday)
                }
                HStack {
                    Text("Thursday:")
                    Text(foodstall.openingHours.thursday)
                }
                HStack {
                    Text("Friday:")
                    Text(foodstall.openingHours.friday)
                }
                HStack {
                    Text("Saturday:")
                    Text(foodstall.openingHours.saturday)
                }
                HStack {
                    Text("Sunday:")
                    Text(foodstall.openingHours.sunday)
                }
                
                Spacer()
                Spacer()
                
                Text("Payment Methods")
                    .font(.title2)
                Text(foodstall.paymentMethods[0])
                //Text(foodstall.paymentMethods[1] || nil)
                
            }
            .padding()
        }
        .navigationTitle(foodstall.hname)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    StallDetail(foodstall: hawkers[3].foodStalls[0])
}
