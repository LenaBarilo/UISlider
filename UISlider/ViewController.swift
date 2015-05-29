//
//  ViewController.swift
//  UISlider
//
//  Created by Yelena Barilo on 4/15/15.
//  Copyright (c) 2015 Yelena Barilo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var instructionalLabel: UILabel!
    
    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!

    @IBOutlet weak var rLabel: UILabel!
    @IBOutlet weak var gLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorView.layer.cornerRadius = 5
        colorView.layer.borderWidth = 1
        colorView.backgroundColor = UIColor.grayColor()
    }
    
    @IBAction func changeColorComponent(sender: AnyObject) {
        instructionalLabel.hidden = true
        var r: CGFloat = CGFloat(self.redControl.value)
        let g: CGFloat = CGFloat(self.greenControl.value)
        let b: CGFloat = CGFloat(self.blueControl.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        returnColorValue()
    }
    
    // Return UI Slider color value numerically
    func returnColorValue() {
        rLabel.text = redControl.value.description
        gLabel.text = greenControl.value.description
        bLabel.text = blueControl.value.description
    }
    
    @IBAction func resetColorView(sender: AnyObject) {
        instructionalLabel.hidden = false
        colorView.backgroundColor = UIColor.grayColor()
        
        redControl.value = 0.5
        greenControl.value = 0.5
        blueControl.value = 0.5
        
        rLabel.text = "0.5"
        gLabel.text = "0.5"
        bLabel.text = "0.5"
    }
    
    // Share functionality
    @IBAction func shareColor(sender: AnyObject) {
        
        let activityViewController = UIActivityViewController(
            activityItems: ["This color is awesome! \nRed value is \(redControl.value.description), \nGreen value is \(greenControl.value.description) \nBlue value is \(blueControl.value.description)" as NSString],
            applicationActivities: nil)
        
        presentViewController(activityViewController, animated: true, completion: nil)
    }
    
}