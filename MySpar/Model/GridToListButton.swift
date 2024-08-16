import SwiftUI

struct GridToListButton: View {
    @State private var showNewView: Bool = false
    
    var body: some View {
        Button {
            showNewView.toggle()
        } label: {
            Image(systemName: self.showNewView == false ? "square.grid.2x2" : "list.dash")
                // BUTTON CHANGE ICON WHEN VIEW SWITCHED
            
                .foregroundStyle(Color(red: 0.097, green: 0.697, blue: 0.255))
                .frame(width: 40, height: 40)
                .background(Color(red: 0.945, green: 0.945, blue: 0.945))
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding(.trailing, 303)
        .padding(.bottom, -5)
        
        // SWITCHING VIEWS FROM GRID TO LIST
        if showNewView == false {
            ViewInGrid()
        } else {
            ViewInList()
        }
    }
}

#Preview {
    GridToListButton()
}

