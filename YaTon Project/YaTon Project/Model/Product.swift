//
//  Product.swift
//  YaTon Project
//
//  Created by 재재, 그루트 on 2022/09/14.
//

import Foundation
import SwiftUI

struct Product {
    var name: String
    var price: String
    var category: Category
    var imageName: String
    var imagePath: String {
        category.rawValue + "/\(imageName)"
    }
    var url: String
}

enum Category: String, CaseIterable {
    case northFace = "THE NORTH FACE"
    case discovery = "Discovery"
    case nepa = "NEPA"
    case eider = "EIDER"
    case columbia = "Columbia"
}
