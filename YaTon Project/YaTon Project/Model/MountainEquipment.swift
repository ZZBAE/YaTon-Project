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
    
    enum Category: String, CaseIterable {
        case northFace = "NorthFace"
        case discovery = "Discovery"
        case K2 = "K2"
        case nationalGeographic = "National Geographic"
        case blackYak = "BlackYak"
        case nepa = "Nepa"
        case eider = "Eider"
        case kolongSport = "Kolong Sport"
        case columbia = "Columbia"
        case millet = "Millet"
    }

    var imageName: String
    var image: Image {
        Image(category.rawValue + "/\(imageName)")
    }
}
