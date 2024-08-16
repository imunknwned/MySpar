import SwiftUI

struct CartButtonInGrid: View {
    @State private var isToggled = false
    @State private var count = 1
    
    var body: some View {
        
        // BUTTON DEFAULT
        Button {
            self.isToggled = true
        } label: {
            Rectangle()
                .frame(width: 48, height: 36)
                .foregroundStyle(Color(red: 0.09, green: 0.716, blue: 0.26))
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .overlay {
                    Image(systemName: "cart.badge.plus")
                        .foregroundStyle(.white)
                }
        } .offset(x: 55, y: 18)
        
        // BUTTON WHEN PRODUCT ADDED TO CART
        if isToggled {
            HStack {
                Spacer()
                
                Button {
                    if count == 1 {
                        isToggled = false
                    } else {
                        count = count - 1
                    }
                } label: {
                    Image(systemName: "minus")
                        .padding(40)
                        .foregroundColor(.white)
                        .frame(maxWidth: 40, maxHeight: 40)
                        .cornerRadius(100)
                }
                Spacer()
                
                VStack {
                    Text("\(count)")
                        .font(.system(size: 16))
                        .foregroundStyle(.white)
                    Text("~5,92 ₽")
                        .font(.system(size: 12))
                        .fontWeight(.light)
                        .foregroundStyle(.white)
                }
                Spacer()
                
                Button {
                    count += 1
                } label: {
                    Image(systemName: "plus")
                        .padding(40)
                        .foregroundColor(.white)
                        .frame(maxWidth: 40, maxHeight: 40)
                        .cornerRadius(100)
                }
                Spacer()
            }
            .frame(maxWidth: 160, maxHeight: 36)
            .background(Color(red: 0.09, green: 0.716, blue: 0.26))
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .offset(y: 18)
        }
    }
}

struct CartButtonInList: View {
    @State private var isToggled = false
    @State private var count = 1
    
    var body: some View {
        
        // BUTTON DEFAULT
        ZStack {
            Button {
                self.isToggled = true
            } label: {
                Rectangle()
                    .frame(width: 48, height: 36)
                    .foregroundStyle(Color(red: 0.09, green: 0.716, blue: 0.26))
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    .overlay {
                        Image(systemName: "cart.badge.plus")
                            .foregroundStyle(.white)
                    }
            }
        }
        .padding(.leading, 303)
        .padding(.top, 100)
        
        // BUTTON WHEN PRODUCT ADDED TO CART
        if isToggled {
            HStack {
                Spacer()
                
                Button {
                    if count == 1 {
                        isToggled = false
                    } else {
                        count = count - 1
                    }
                } label: {
                    Image(systemName: "minus")
                        .padding(40)
                        .foregroundColor(.white)
                        .frame(maxWidth: 40, maxHeight: 40)
                        .cornerRadius(100)
                }
                Spacer()
                
                VStack {
                    Text("\(count)")
                        .font(.system(size: 16))
                        .foregroundStyle(.white)
                    Text("~5,92 ₽")
                        .font(.system(size: 12))
                        .fontWeight(.light)
                        .foregroundStyle(.white)
                }
                Spacer()
                
                Button {
                    count += 1
                } label: {
                    Image(systemName: "plus")
                        .padding(40)
                        .foregroundColor(.white)
                        .frame(maxWidth: 40, maxHeight: 40)
                        .cornerRadius(100)
                }
                Spacer()
            }
            .frame(maxWidth: 191, maxHeight: 36)
            .background(Color(red: 0.09, green: 0.716, blue: 0.26))
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .padding(.leading, 160)
            .padding(.top, 100)
        }
    }
}
