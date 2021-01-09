//
//  ViewController.swift
//  Magic8Balls
//
//  Created by surendra chauhan on 8/19/18.
//  Copyright © 2018 surendra chauhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randBallImageNo : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    let imageViewArray = ["ball1", "ball2", "ball3", "ball4", "ball5" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       changeBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func changeBallImage()  {
        
       randBallImageNo = Int(arc4random_uniform(5))
       
        imageView.image = UIImage(named: imageViewArray[randBallImageNo])

    }

    
    @IBAction func askMeAythingAction(_ sender: Any) {
        
        changeBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
       changeBallImage()
    }
    
}

