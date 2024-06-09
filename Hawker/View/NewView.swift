import SwiftUI

struct NewView: View {
    let myDictionary = ["apple": 3, "banana": 2, "orange": 5]

    var body: some View {
        VStack {
            ForEach(myDictionary.keys.sorted(), id: \.self) { key in
                HStack {
                    Text(key)
                    Spacer()
                    Text("\(myDictionary[key]!)") // Force unwrap is safe here
                }
            }
        }
    }
}

#Preview {
    NewView()
}
