//
//  ViewInGrid.swift
//  MySpar
//
//  Created by Максим Щербенко on 17.08.2024.
//

import SwiftUI

struct ViewInGrid: View {
    @StateObject var viewModel = ContentViewModel()
    
    let layout = [GridItem(.adaptive(minimum: 115), spacing: 10)]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: layout, spacing: 5) {
                    ForEach(viewModel.contentInGrid) {
                        item in ProductCardInGrid(item: item)
                    } 
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
            }
        }
    }
}

#Preview {
    ViewInGrid()
}
