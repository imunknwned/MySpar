import SwiftUI

struct TopCardItemButtons: View {
    var body: some View {
        Button {
            // some action
        } label: {
            Rectangle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .overlay {
                    Image(systemName: "list.clipboard")
                }
            
        } 
        .offset(x: 65, y: -90)
        
        Button {
            // some action
        } label: {
            Rectangle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .overlay {
                    Image(systemName: "heart")
                }
            
        } .offset(x: 65, y: -55)
    }
}

struct TopCardItemInList: View {
    @State private var isFavoriteToggle: Bool = false
    
    var body: some View {
        Button {
            // some action
        } label: {
            Rectangle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .overlay {
                    Image(systemName: "list.clipboard")
                        .foregroundStyle(.gray)
                }
        }
        
        Button {
            isFavoriteToggle.toggle()
        } label: {
            Rectangle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
            
                // BUTTON CHANGE COLOR AND ICON
                .overlay {
                    Image(systemName: self.isFavoriteToggle == false ? "heart" : "heart.fill")
                        .foregroundStyle(isFavoriteToggle ? .green : .gray)
                }
        }
    }
}
