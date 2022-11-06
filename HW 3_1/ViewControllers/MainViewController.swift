//
//  ViewController.swift
//  HW 3_1
//
//  Created by Artem Lapov on 02.11.2022.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationDescriptionLabel: UILabel! {
        didSet {
            animationDescriptionLabel.text = randomAnimation.descrition
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private var randomAnimation = Animation.getRandomAnimation()


    @IBAction func runAnimationButton(_ sender: UIButton) {
        animationDescriptionLabel.text = randomAnimation.descrition

        animationView.animation = randomAnimation.preset
        animationView.curve = randomAnimation.curve
        animationView.delay = randomAnimation.delay
        animationView.duration = randomAnimation.duration
        animationView.force = randomAnimation.force
        animationView.animate()

        randomAnimation = Animation.getRandomAnimation()
        sender.setTitle("Run \(randomAnimation.preset)", for: .normal)
        }

    }



