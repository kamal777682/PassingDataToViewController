//
//  ViewController.swift
//  PassingDataToViewController
//
//  Created by MacStudent on 2020-03-03.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource
{
   
    

    @IBOutlet weak var textName: UITextField!
    
    @IBOutlet weak var countryPicker: UIPickerView!
    
    var countryList = ["India","China","USA","Japan","Sri Lanka","Pakistan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryPicker.delegate = self
        countryPicker.dataSource = self
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnGoNextx(_ sender: UIButton)
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = sb.instantiateViewController(identifier: "secondVC") as! SecondViewController
        if let name = self.textName.text
        {
            secondVC.name = name
            navigationController?.pushViewController(secondVC, animated: true)
            //self.present(secondVC, animated: true , completion : nil)
        }
          }
    
    // to count the number of components
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // to count the values in picker View
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.countryList.count
    }
    
    //to set values in picker view
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countryList[row]
    }
    
    // to display values in console
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(countryList[row])
    }
    
}

