//
//  ViewController.swift
//  start
//
//  Created by Gulsah Altiparmak on 29.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func fncCancel(_ sender: UIButton) {
        print("Cancel!")
    }
    
    @IBAction func fncDateSelect(_ sender: UIDatePicker) {
        print(sender.date)
    }
    @IBAction func fncSendData(_ sender: UIButton) {
        sender.backgroundColor = .red
        sender.frame=CGRect(x:100,y:100,width:200,height:100)
        
        print("fncSendData Call")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("hello swift")
    }


}

