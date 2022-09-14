//
//  Model.swift
//  YaTon Project
//
//  Created by 재재, 그루트 on 2022/09/14.
//

import Foundation

import Foundation
import SwiftUI

struct MountainEquipment: Hashable, Identifiable, Codable {
    var id: Int
    var name: String
    var price: Int
    var category: Category
    enum Category: String, CaseIterable, Codable {
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

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
