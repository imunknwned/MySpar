import SwiftUI

struct ProductItemGrid: Identifiable {
    let id: UUID = UUID()
    let image: String
    let name: String
    let price: String
    let cents: String
    let oldPrice: String
    let discount: String
    
    static func mockData() -> [ProductItemGrid] {
        [
            ProductItemGrid(image: "image1", 
                            name: "сыр Ламбер 500/0 230г",
                            price: "99", cents: "90 ₽",
                            oldPrice: "199,0",
                            discount: ""),
            ProductItemGrid(image: "image2", 
                            name: "сыр Ламбер 500/0 230г",
                            price: "99",
                            cents: "90 ₽",
                            oldPrice: "199,0",
                            discount: ""),
            ProductItemGrid(image: "image3", 
                            name: "сыр Ламбер 500/0 230г",
                            price: "99",
                            cents: "90 ₽",
                            oldPrice: "",
                            discount: ""),
            ProductItemGrid(image: "image4", 
                            name: "сыр Ламбер 500/0 230г",
                            price: "99",
                            cents: "90 ₽",
                            oldPrice: "199,0",
                            discount: "-25%"),
            ProductItemGrid(image: "image5", 
                            name: "сыр Ламбер 500/0 230г",
                            price: "99",
                            cents: "90 ₽",
                            oldPrice: "199,0",
                            discount: "-25%"),
            ProductItemGrid(image: "image6", 
                            name: "сыр Ламбер 500/0 230г",
                            price: "99",
                            cents: "90 ₽",
                            oldPrice: "199,0",
                            discount: "-25%"),
            ProductItemGrid(image: "image7", 
                            name: "сыр Ламбер 500/0 230г",
                            price: "99",
                            cents: "90 ₽",
                            oldPrice: "199,0",
                            discount: ""),
            ProductItemGrid(image: "image8", 
                            name: "сыр Ламбер 500/0 230г",
                            price: "99",
                            cents: "90 ₽",
                            oldPrice: "199,0",
                            discount: "-25%"),
            ProductItemGrid(image: "image9", 
                            name: "сыр Ламбер 500/0 230г",
                            price: "99",
                            cents: "90 ₽",
                            oldPrice: "199,0",
                            discount: "-25%"),
            ProductItemGrid(image: "image10", 
                            name: "сыр Ламбер 500/0 230г",
                            price: "99",
                            cents: "90 ₽",
                            oldPrice: "199,0",
                            discount: "-25%"),
            ProductItemGrid(image: "image11", 
                            name: "сыр Ламбер 500/0 230г",
                            price: "99", cents: "90 ₽",
                            oldPrice: "199,0",
                            discount: "-25%"),
            ProductItemGrid(image: "image12", 
                            name: "сыр Ламбер 500/0 230г",
                            price: "99",
                            cents: "90 ₽",
                            oldPrice: "199,0",
                            discount: "-25%"),
            ProductItemGrid(image: "image13", 
                            name: "сыр Ламбер 500/0 230г",
                            price: "99", cents: "90 ₽",
                            oldPrice: "199,0",
                            discount: "-25%"),
            ProductItemGrid(image: "image14", 
                            name: "сыр Ламбер 500/0 230г",
                            price: "99",
                            cents: "90 ₽",
                            oldPrice: "199,0",
                            discount: "-25%"),
        ]
    }
}

struct ProductItemList: Identifiable {
    let id: UUID = UUID()
    let image: String
    let name: String
    let price: String
    let cents: String
    let oldPrice: String
    let discount: String
    let country: String
    
    static func mockData() -> [ProductItemList] {
        [
           ProductItemList(image: "imageList1", 
                           name: "Огурцы тепличные cадово-огородные",
                           price: "99", cents: "90 ₽", oldPrice: "199, 0",
                           discount: "25%",
                           country: ""),
           ProductItemList(image: "imageList2", 
                           name: "Дорадо Охлажденная Непотрошеная 300-400г",
                           price: "99", cents: "90 ₽",
                           oldPrice: "199, 0",
                           discount: "25%",
                           country: "Франция🇫🇷"),
           ProductItemList(image: "imageList3", 
                           name: "Энергетический Напиток AdrenaIine Rush 0,449л ж/б",
                           price: "99", cents: "90 ₽", oldPrice: "",
                           discount: "",
                           country: "Франция🇫🇷"),
           ProductItemList(image: "imageList4", 
                           name: "Манго Кео", price: "99",
                           cents: "90 ₽", oldPrice: "199, 0",
                           discount: "25%",
                           country: "Франция🇫🇷"),
           ProductItemList(image: "imageList1", 
                           name: "сыр Ламбер 500/0 230г",
                           price: "99",
                           cents: "90 ₽",
                           oldPrice: "199, 0",
                           discount: "25%",
                           country: ""),
           ProductItemList(image: "imageList1", 
                           name: "сыр Ламбер 500/0 230г",
                           price: "99", cents: "90 ₽",
                           oldPrice: "199, 0",
                           discount: "25%",
                           country: ""),
           ProductItemList(image: "imageList1", 
                           name: "сыр Ламбер 500/0 230г",
                           price: "99",
                           cents: "90 ₽",
                           oldPrice: "199, 0",
                           discount: "25%",
                           country: ""),
           ProductItemList(image: "imageList1", 
                           name: "сыр Ламбер 500/0 230г",
                           price: "99",
                           cents: "90 ₽",
                           oldPrice: "199, 0",
                           discount: "25%",
                           country: ""),
        ]
    }
}
