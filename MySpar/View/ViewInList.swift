//
//  ViewInList.swift
//  MySpar
//
//  Created by Максим Щербенко on 17.08.2024.
//

import SwiftUI

struct ViewInList: View {
    @StateObject var viewModel = ContentViewModel()
    
    let layout = [GridItem(.adaptive(minimum: 115), spacing: 10)]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(viewModel.contentInList) {
                    item in ProductCardInList(item: item)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}
#Preview {
    ViewInList()
}
