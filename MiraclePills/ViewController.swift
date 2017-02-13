//
//  ViewController.swift
//  MiraclePills
//
//  Created by Junior Samaroo on 2017-02-12.
//  Copyright © 2017 Junior Samaroo. All rights reserved.
//

import UIKit

// implement UI Picker delegates, DS is source of data, deleegate is what happens when you scroll to item
class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    // weak mean weak reference, when view is gone, this var is gone too
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states = ["Claxton Bay", "P.O.S", "San Fernando"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // when changes done to statePicker, look at this VC for protocols/action
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
    }
    
    // number of columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
    

}

