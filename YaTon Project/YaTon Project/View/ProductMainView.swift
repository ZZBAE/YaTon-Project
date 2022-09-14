//
//  ProductMainView.swift
//  YaTon Project
//
//  Created by 재재, 그루트 on 2022/09/14.
//

import SwiftUI

struct ProductMainView: View {
    let models = Category.allCases
    
    var body: some View {
        VStack {
            Text("등린아 이거 입고 가")
                .bold()
                .font(.body)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    ForEach(models, id: \.self) { model in
                        Text(model.rawValue)
                            .font(.title3.bold())
                        ProductGroupView(category: model)
                    }
                }
            }
            .padding()
        }
        .background(Image("img").resizable().frame(width: UIScreen.main.bounds.width,
                                                   height: UIScreen.main.bounds.height + 10,
                                                   alignment: .center).opacity(0.3))
    }
}

struct View_Previews: PreviewProvider {
    static var previews: some View {
        ProductMainView()
    }
}
