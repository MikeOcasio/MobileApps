//
//  ViewController.swift
//  Magic8
//
//  Created by Mike Ocasio on 3/5/18.
//  Copyright © 2018 Apple Fritter Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballImageView: UIImageView!
    @IBOutlet weak var askAnythingLabel: UILabel!
  
    
    var randomImagePicker : Int = 0
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ballimagepicker()
        
    }

    @IBAction func askButton(_ sender: UIButton) {
        
        ballimagepicker()
        
    }
    
    func ballimagepicker() {
        
        randomImagePicker = Int(arc4random_uniform(5))
        
        
        ballImageView.image = UIImage(named: ballArray[randomImagePicker])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        ballimagepicker()
        
    }
    

}

