//
//  Home.swift
//  7-Days
//
//  Created by Gulsah Altiparmak on 16.01.2021.
//

import UIKit
import SCLAlertView
class Home: UIViewController {

    @IBAction func fncAlertShow(_ sender: UIButton) {
        //madde 1 import et indirdiğini
        //SCLAlertView().showInfo("Önemli Uyarı", subTitle: "Lütfen adınızı girin",closeButtonTitle: "Tamam")
        SCLAlertView().showInfo("Önemli Uyarı", subTitle: "Lütfen adınızı girin")
       // SCLAlertView().showWait("Important info", subTitle: "You are great")
        /*
        SCLAlertView().showTitle(
            "Congratulations", // Title of view
            subTitle: "Operation successfully completed." // String of view
            , timeout: nil,
            //timeout:1, // Duration to show before closing automatically, default: 0.0
            completeText: "Done", // Optional button value, default: ""
            style: .success, // Styles - see below.
            colorStyle: 0xA429FF,
            colorTextButton: 0xFFFFFF
        )
         */
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       print("Home viewDidLoad Call")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Home viewDidAppear Call")
    }
    



}
