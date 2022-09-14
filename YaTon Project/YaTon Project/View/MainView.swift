//
//  View.swift
//  YaTon Project
//
//  Created by Groot on 2022/09/14.
//

import SwiftUI

struct MainView: View {
    let models = Category.allCases
    
    var body: some View {
        VStack {
            Text("등린아 이거 입고 가")
                .bold()
                .font(.body)
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(models, id: \.self) { model in
                        Text(model.rawValue)
                            .font(.title3.bold())
                        productsScrollView(category: model)
                    }
                }
            }
            .padding()
        }
        .background(AngularGradient(colors: [.purple, .green, .blue],
                                    center: .center,
                                    startAngle: .degrees(10),
                                    endAngle: .degrees(360)))
    }
}

struct productsScrollView: View {
    var category: Category
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                detailView(category: category)
            }
        }
    }
}

struct detailView: View {
    private let model = ModelData().mountainEquipments
    var category: Category
    
    var body: some View {
        ForEach(0..<4) { number in
            VStack {
                let url = filteringModel(category: category)[number].url
                Link(destination: URL(string: url)!) {
                    Image(filteringModel(category: category)[number].imageName)
                        .resizable()
                        .frame(width: 150, height: 150)
                        .aspectRatio(contentMode: .fit)
                }
                Text(filteringModel(category: category)[number].name)
                    .font(Font.caption)
                Text(filteringModel(category: category)[number].price)
                    .font(Font.caption)
            }
            .frame(width: 200, height: 200)
            .padding()
            .border(Color(.systemGray5), width: 0.8)
            .listStyle(.automatic)
        }
    }
    
    func filteringModel(category: Category) -> [MountainEquipment] {
        let newModel = model.filter { $0.category == category }
        
        return newModel
    }
}

struct View_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
