//
//  Animation.swift
//  HW 3_1
//
//  Created by Artem Lapov on 03.11.2022.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double

    var descrition: String {
"""
preset: \(preset)
curve: \(curve)
force: \(String(format: "%.02f", force))
duration: \(String(format: "%.02f", duration))
delay: \(String(format: "%.02f", delay))
"""
    }

    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.animations.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "linear",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.5...2.0),
            delay: Double.random(in: 0.1...0.3)
        )
    }

}
