//
//  Model.swift
//  YaTon Project
//
//  Created by 재재, 그루트 on 2022/09/14.
//

import Foundation
import SwiftUI

struct MountainEquipment {
    var name: String
    var price: Int
    var category: Category
    var imageName: String
    var imagePath: String {
        category.rawValue + "/\(imageName)"
    }
}

enum Category: String, CaseIterable {
    case northFace = "NorthFace"
    case discovery = "Discovery"
    case nepa = "Nepa"
    case eider = "Eider"
    case columbia = "Columbia"
}
