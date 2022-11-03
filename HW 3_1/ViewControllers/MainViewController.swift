//
//  ViewController.swift
//  HW 3_1
//
//  Created by Artem Lapov on 02.11.2022.
//

import UIKit
import SpringAnimation

class MainViewController: UIViewController {

    @IBOutlet var animationView: SpringView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func runAnimationButton(_ sender: UIButton) {
        animationView.animation = "pop"
        animationView.animate()
        }
    }



