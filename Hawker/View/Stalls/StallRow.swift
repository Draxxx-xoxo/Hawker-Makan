import SwiftUI

struct StallRow: View {
    var foodstall: Hawker.Foodstalls
    var body: some View {
        HStack {
            Image(systemName: "fork.knife")
                //.resizable()
                //.frame(width: 30, height: 30)
            Text(foodstall.hname)
            Spacer()
            Image(systemName: "arrowshape.right")
        }
    }
}

#Preview {
    Group {
        StallRow(foodstall: hawkers[0].foodStalls[0])
        StallRow(foodstall: hawkers[1].foodStalls[0])
    }
    
}
