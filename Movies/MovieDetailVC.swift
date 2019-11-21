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
    
    @IBOutlet weak var currentSizeLabel: UILabel!
    
    var currentFontSize: CGFloat!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepperOutlet.value = Double(currentFontSize)
        sliderOutlet.value = Float(currentFontSize)

    }
    // configure
    @IBAction func fontStepper(_ sender: UIStepper) {
        sliderOutlet.value = Float(sender.value)
        currentFontSize = CGFloat(sender.value)
        print("stepper = \(currentFontSize!)")
        currentSizeLabel.text = "Font Size: \(Int(currentFontSize!))"
        sender.value = Double(currentFontSize)
    }
    //configure
    @IBAction func fontSlider(_ sender: UISlider) {
        stepperOutlet.value = Double(sender.value)
        currentFontSize = CGFloat(sender.value)
        print("slider = \(Int(currentFontSize!))")
        currentSizeLabel.text = "Font Size: \(Int(currentFontSize!))"
         sender.value = Float(currentFontSize)
    }
}
