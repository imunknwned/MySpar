//
//  ContentViewModel.swift
//  MySpar
//
//  Created by Максим Щербенко on 17.08.2024.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var contentInGrid: [ProductItemGrid] = ProductItemGrid.mockData()
    @Published var contentInList: [ProductItemList] = ProductItemList.mockData()
}
