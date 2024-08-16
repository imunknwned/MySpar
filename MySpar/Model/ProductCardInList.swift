import SwiftUI

struct ProductCardInList: View {
    var item: ProductItemList
    
    var body: some View {
        // MARK: LEFT SIDE OF LIST PRODUCT CARD
        ZStack {
            ZStack {
                Image(item.image)
                    .resizable()
                    .frame(width: 144, height: 144)
                    .padding(.trailing, 215)
                    .padding([.top, .leading, .bottom], 16)
                ZStack {
                    Text(item.discount)
                        .font(.system(size: 16))
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red: 0.764, green: 0.137, blue: 0.139))
                        .padding(.trailing, 97)
                        .padding(.top, 124)
                }
            }
            // PROMO TITLE ON TOP LEFT OF PRODUCT IMAGE
            ZStack {
                Promo()
            }
            .padding(.trailing, 275)
            .padding(.bottom, 128)
            .padding([.leading, .top], 16)
            
            // MARK: RIGHT SIDE OF LIST PRODUCT CARD
            HStack {
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 12, height: 12)
                    .foregroundStyle(.yellow)
                Text("4.1")
                    .font(.system(size: 12))
                    .padding(.leading, -2)
                Text("| 19 отзывов")
                    .font(.system(size: 12))
                    .fontWeight(.thin)
                    .padding(.leading, -4)
            }
            .padding(.bottom, 124)
            .padding(.leading, 85)
            
            ZStack {
                    Text(item.name)
                        .font(.system(size: 12))
                        .fontWeight(.light)
                        .lineLimit(3)
                        .frame(width: 159, height: 30, alignment: .leading)
                        .padding(.leading, 176)
                        .padding(.bottom, 70)
                        .padding(.trailing, 48)
                Text(item.country)
                    .font(.system(size: 12))
                    .frame(alignment: .leading)
                    .fontWeight(.light)
                    .padding(.bottom, 18)
                    .padding(.leading, 37)
            }
            
            // FAVORITE AND LIST BUTTONS
            VStack {
                TopCardItemInList()
            }
            .padding(.leading, 335)
            .padding(.bottom, 80)
            .frame(width: 32, height: 64)
            
            ZStack {
                HStack {
                    Text(item.price)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(.leading, 8)
                    Text(item.cents)
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .padding(.leading, -2)
                } 
                .frame(width: 77, height: 22)
                .padding(.leading, 54)
                .padding(.top, 86)
                VStack {
                    Text(item.oldPrice)
                        .foregroundStyle(.gray)
                        .font(.system(size: 12))
                        .strikethrough(true)
                }
                .padding(.leading, 31)
                .padding(.top, 122)
                
            }
            ZStack {
                CartButtonInList()
            }
        }
        .frame(width: 375, height: 176)
        .background(.white)
        .overlay(Rectangle().frame(width: nil, height: 1, alignment: .top).foregroundColor(Color.gray), alignment: .top)
    }
}
