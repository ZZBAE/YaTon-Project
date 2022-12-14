//
//  ProductView.swift
//  YaTon Project
//
//  Created by 재재, 그루트 on 2022/09/14.
//

import SwiftUI

struct ProductView: View {
    private let model = ModelData().products
    var category: Category
    
    var body: some View {
        ForEach(0..<4) { number in
            VStack(spacing: 4) {
                Image(filteringModel(category: category)[number].imageName)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .aspectRatio(contentMode: .fit)
                Text(filteringModel(category: category)[number].name)
                    .font(Font.caption)
                Text(filteringModel(category: category)[number].price)
                    .font(Font.body)
                    .bold()
                let url = filteringModel(category: category)[number].url
                Link(destination: URL(string: url)!) {
                    Text("최저가 보러가기")
                        .font(Font.caption)
                        .foregroundColor(.blue)
                }
            }
            .frame(width: 180, height: 180)
            .padding()
            .border(Color(.systemGray5), width: 0.8)
        }
        .background(.white)
    }
        
        func filteringModel(category: Category) -> [Product] {
            let newModel = model.filter { $0.category == category }
            
            return newModel
        }
    }
