import SwiftUI

struct HawkerRow: View {
    var hawker: Hawker
    var body: some View {
        HStack {
            hawker.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(hawker.name)
            Spacer()
        }
    }
}

#Preview {
    Group {
        HawkerRow(hawker: hawkers[0])
        HawkerRow(hawker: hawkers[1])
    }
    
}
