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
        NavigationView {
                List {
                    VStack(alignment: .leading) {
                        ForEach(models, id: \.self) { model in
                            Text(model.rawValue)
                                .font(.title3.bold())
                            productsScrollView(category: model)
                        }
                    }
                }
                .navigationTitle("등린이를 위한 등산복 추천")
            }
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
                Text(filteringModel(category: category)[number].price.description)
            }
            .padding()
            .border(.cyan, width: 3)
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
