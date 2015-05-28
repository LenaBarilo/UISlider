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
    
    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!
    @IBOutlet weak var instructionalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        colorView.layer.cornerRadius = 5
        colorView.layer.borderWidth = 1
        
        colorView.backgroundColor = UIColor.grayColor()
    }
    
    
    
    @IBAction func changeColorComponent(sender: AnyObject) {
        
        instructionalLabel.hidden = true
        let r: CGFloat = CGFloat(self.redControl.value)
        let g: CGFloat = CGFloat(self.greenControl.value)
        let b: CGFloat = CGFloat(self.blueControl.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        //r.text = "\(value)"
    }
    
    @IBAction func reserColorView(sender: AnyObject) {
        
        instructionalLabel.hidden = false
        
        colorView.backgroundColor = UIColor.grayColor()
        redControl.value = 0.5
        greenControl.value = 0.5
        blueControl.value = 0.5
    }
}