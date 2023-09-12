//
//  ViewController.swift
//  week-4
//
//  Created by Mark D. Raden on 9/12/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var textEdit: UITextField!
    @IBOutlet var slider: UISlider!
    @IBOutlet var mySwitch: UISwitch!
    @IBOutlet var progress: UIProgressView!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button tapped")
    }
    
    @IBAction func draggedButton(_ sender: UIButton) {
        print("Dragged a button")
    }
    
    @IBAction func segmentedControlChanges(_ sender: UISegmentedControl) {
        print("The segmented control was changed")
    }
    
    @IBAction func textEditChanged(_ sender: UITextField) {
        let text = sender.text!
        print("The text field was changed to: \(text)")
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        print("the slider has changed to: \(sender.value)")
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        print("the switch is now: \(sender.isOn)")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

