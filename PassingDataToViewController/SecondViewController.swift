//
//  SecondViewController.swift
//  PassingDataToViewController
//
//  Created by MacStudent on 2020-03-03.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    var name : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Hide Back Button from navigation Bar
        self.navigationItem.hidesBackButton = true
        if let nm = name{
            self.lblWelcome.text = "Welcome, \(nm)"
            self.navigationItem.title = "Welcome ,\(nm)"
            self.addCloseButton() // create close button on second VC
        }
        else
        {
            self.lblWelcome.text = "No Name Sent from first VC"
        }
        }

    private func addCloseButton()
    {
        let btnClose = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector(self.goBack))
        self.navigationItem.rightBarButtonItem = btnClose
    }
    @objc func goBack()
    {
        self.navigationController?.popViewController(animated: true)
    }
    // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


