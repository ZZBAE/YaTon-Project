//
//  CategoryHome.swift
//  YaTon Project
//
//  Created by 재재, 그루트 on 2022/09/14.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var mountainEquipment: MountainEquipment

    var body: some View {
        NavigationView {
            List {
                mountainEquipment.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())

                ForEach(mountainEquipment.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: mountainEquipment.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("등산용품 아내몰래")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
