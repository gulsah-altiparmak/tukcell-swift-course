//
//  ViewController.swift
//  5-Days
//
//  Created by Gulsah Altiparmak on 12.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtData: UITextField!
    
    @IBOutlet weak var mail: UITextField!
    
    @IBAction func fncSend(_ sender: UIButton) {
        let data = txtData.text!
        let mailData = mail.text!
        if (data == ""){
            print("Data not empty")
            alertForm(title: "Data Error", message: "Data not empty")
        
        }
        else if (mailData == ""){
            print("Mail not empty")
            alertForm(title: "Mail Error", message: "Mail not empty")
        }
 
    }
    func alertForm(title:String,message:String)  {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.actionSheet)
        // alert initilizate
        
        let yesBtn = UIAlertAction(title: "OK", style: .default) {
            (action) in
            print("Ok Button Click")
        } // button create
        
        //cancel button
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(yesBtn) //butonun eklendiği
        alert.addAction(cancel)
        //completion bir işlem tamamlandıktan sonra
        
        
        present(alert, animated: true, completion: nil) // show
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    


}

