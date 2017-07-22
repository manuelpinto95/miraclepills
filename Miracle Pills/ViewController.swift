//
//  ViewController.swift
//  Miracle Pills
//
//  Created by Manuel Pinto on 19/07/17.
//  Copyright © 2017 Manuel Pinto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextBox: UITextField!
    @IBOutlet weak var zipcodeLabel: UILabel!
    @IBOutlet weak var zipcodeTextBox: UITextField!
    let states = ["Alaska",
                  "Alabama",
                  "Arkansas",
                  "American Samoa",
                  "Arizona",
                  "California",
                  "Colorado",
                  "Connecticut",
                  "District of Columbia",
                  "Delaware",
                  "Florida",
                  "Georgia",
                  "Guam",
                  "Hawaii",
                  "Iowa",
                  "Idaho",
                  "Illinois",
                  "Indiana",
                  "Kansas",
                  "Kentucky",
                  "Louisiana",
                  "Massachusetts",
                  "Maryland",
                  "Maine",
                  "Michigan",
                  "Minnesota",
                  "Missouri",
                  "Mississippi",
                  "Montana",
                  "North Carolina",
                  " North Dakota",
                  "Nebraska",
                  "New Hampshire",
                  "New Jersey",
                  "New Mexico",
                  "Nevada",
                  "New York",
                  "Ohio",
                  "Oklahoma",
                  "Oregon",
                  "Pennsylvania",
                  "Puerto Rico",
                  "Rhode Island",
                  "South Carolina",
                  "South Dakota",
                  "Tennessee",
                  "Texas",
                  "Utah",
                  "Virginia",
                  "Virgin Islands",
                  "Vermont",
                  "Washington",
                  "Wisconsin",
                  "West Virginia",
                  "Wyoming"]
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryTextBox.isHidden = true
        zipcodeLabel.isHidden = true
        zipcodeTextBox.isHidden = true
    }
    
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
        statePickerButton.setTitle(states[row], for: UIControlState())
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextBox.isHidden = false
        zipcodeLabel.isHidden = false
        zipcodeTextBox.isHidden = false
    }
}

