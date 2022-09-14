//
//  ProductGroupView.swift
//  YaTon Project
//
//  Created by Groot on 2022/09/14.
//

import SwiftUI

struct ProductGroupView: View {
    var category: Category
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ProductView(category: category)
            }
        }
    }
}
