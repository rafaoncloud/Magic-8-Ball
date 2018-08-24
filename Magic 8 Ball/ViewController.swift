//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Rafael Henriques on 24/08/2018.
//  Copyright © 2018 rafaoncloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var ballArray = [UIImage]()
    var randomBallNumber: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Get an Array to manipulate the images
        ballArray.append(#imageLiteral(resourceName: "ball1"))
        ballArray.append(#imageLiteral(resourceName: "ball2"))
        ballArray.append(#imageLiteral(resourceName: "ball3"))
        ballArray.append(#imageLiteral(resourceName: "ball4"))
        ballArray.append(#imageLiteral(resourceName: "ball5"))
        
        self.newBallImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func newBallImage() {
        // Generate a random number between 1 and 4
        randomBallNumber = Int(arc4random_uniform(5))
        // Display in the UIImageView
        imageView.image = ballArray[randomBallNumber]
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

