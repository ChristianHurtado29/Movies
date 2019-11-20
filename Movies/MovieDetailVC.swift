//
//  MovieDetailVC.swift
//  Movies
//
//  Created by Christian Hurtado on 11/20/19.
//  Copyright © 2019 Christian Hurtado. All rights reserved.
//

import UIKit

class MovieDetailVC: UIViewController {
    
    var currentFontSize = 5

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func fontStepper(_ sender: UIStepper) {
        
    // label.font = UIFont(name: label.font.fontName, size: 20)
    }
    
    @IBAction func fontSlider(_ sender: UISlider) {
        currentFontSize = Int(sender.value)
        print(currentFontSize)
    }
}
