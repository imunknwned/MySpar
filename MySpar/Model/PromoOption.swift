import SwiftUI

struct Promo: View {
    var body: some View {
        Rectangle()
            .fill(Color(red: 0.986, green: 0.473, blue: 0.489))
            .frame(width: 84, height: 16)
            .cornerRadius(6, corners: [.topRight,.bottomRight, .topLeft])
        Text("Удар по ценам")
            .font(.system(size: 10))
            .fontWidth(.condensed)
            .fontWeight(.medium)
            .foregroundStyle(.white)
    }
}
