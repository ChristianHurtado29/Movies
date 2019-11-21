//
//  MovieDetailVC.swift
//  Movies
//
//  Created by Christian Hurtado on 11/20/19.
//  Copyright © 2019 Christian Hurtado. All rights reserved.
//

import UIKit

class MovieDetailVC: UIViewController {
    
    @IBOutlet weak var stepperOutlet:UIStepper!
    @IBOutlet weak var sliderOutlet:UISlider!
    
    var currentFontSize: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func fontStepper(_ sender: UIStepper) {
        sliderOutlet.value = Float(sender.value)
        currentFontSize = CGFloat(sender.value)
        print("stepper = \(currentFontSize))")
    }
    
    @IBAction func fontSlider(_ sender: UISlider) {
        stepperOutlet.value = Double(sender.value)
        currentFontSize = CGFloat(sender.value)
        print("slider = \(currentFontSize))")
    }
}
