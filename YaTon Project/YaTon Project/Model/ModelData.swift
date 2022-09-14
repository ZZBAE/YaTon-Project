//
//  ModelData.swift
//  YaTon Project
//
//  Created by 변재은 on 2022/09/14.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var mountainEquipments: [mountainEquipment] = ""

    var features: [mountainEquipment] {
        landmarks.filter { $0.isFeatured }
    }

    var categories: [String: [mountainEquipment]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
}
