//
//  ViewController.swift
//  animations
//
//  Created by Pranav Neyveli on 8/4/17.
//  Copyright © 2017 Pranav Neyveli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button: UIButton!
    
    @IBOutlet var presidentImage: UIImageView!
    // allow variables to be accessed anywhere in this class doe
    var  timer = Timer()
    var isAnimating = false
    
    var counter = 01
    // automate animates the image you have selected on the storyboard making life so much easier btw. 
    func animate() {
        presidentImage.image = UIImage(named: "frame_\(counter)_delay-0.05s.gif")
        counter += 1
        if counter == 62 {
            counter = 00
        }
    }

    @IBAction func nextButton(_ sender: Any) {
        //timer needed to automate everything baby
        if isAnimating {
            timer.invalidate()
            // to change what it says on the button
            button.setTitle("Start", for: [])
            isAnimating = false
        } else {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.animate), userInfo: nil, repeats: true)
            // to chang ethe button to stop
            button.setTitle("Stop", for: [])
            isAnimating = true
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // put stuff here u want printed to the console

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
     }

}

