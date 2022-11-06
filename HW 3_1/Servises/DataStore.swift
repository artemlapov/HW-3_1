//
//  DataStore.swift
//  HW 3_1
//
//  Created by Artem Lapov on 06.11.2022.
//

import Foundation
import SpringAnimation

class DataStore {
    static let shared = DataStore()

    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases

    private init() {}
}
