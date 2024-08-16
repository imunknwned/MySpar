import SwiftUI

struct ProductCardInGrid: View {
    var item: ProductItemGrid

    var body: some View {
        // MARK: TOP SIDE OF PRODUCT CARD
        VStack {
            ZStack {
                Image(item.image)
                    .resizable()
                    .frame(width: 168, height: 168)
                    .offset(y: -25)
                ZStack {
                    HStack {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 12, height: 12)
                            .foregroundStyle(.yellow)
                        Text("4.1")
                            .font(.system(size: 12))
                            .padding(.leading, -2)
                    } 
                    .offset(x: -58, y: 50)
                    .padding(.leading, -4)
                    
                    ZStack {
                        Text(item.discount)
                            .font(.system(size: 16))
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 0.764, green: 0.137, blue: 0.139))
                            .offset(x: 58, y: 49)
                            .padding(.trailing, 5)
                    }
                }
                // PROMO TITLE ON TOP LEFT OF PRODUCT IMAGE
                ZStack {
                    Promo()
                }
                .offset(x: -40, y: -100)
                .padding(.trailing, 6)
                
                // FAVORITE AND LIST BUTTONS
                ZStack {
                    TopCardItemButtons()
                }
            }
            // MARK: BOTTOM SIDE OF PRODUCT CARD
            VStack {
                Text (item.name)
                    .font(.system(size: 12))
                    .fontWeight(.light)
                    .offset(x: -8 , y: -20)
            }
            ZStack {
                Text(item.price)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .offset(x: -68, y: 12)
                    .padding(.leading, 8)
                Text(item.cents)
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .offset(x: -30, y: 12)
                    .padding(.leading, -2)
                Text(item.oldPrice)
                    .foregroundStyle(.gray)
                    .font(.system(size: 12))
                    .offset(x: -60, y: 28)
                    .strikethrough(true)
                CartButtonInGrid()
            }
        }
        .frame(width: 168, height: 278)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(radius: 8)
    }
}
