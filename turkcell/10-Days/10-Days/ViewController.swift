//
//  ViewController.swift
//  10-Days
//
//  Created by Gulsah Altiparmak on 23.01.2021.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBAction func fncSend(_ sender: UIButton) {
        let email = txtEmail.text!
        let password = txtPassword.text!
        
        let params = ["ref":"5380f5dbcc3b1021f93ab24c3a1aac24","userEmail":email
                      ,"userPass":password, "face":"no"]
        
        let url = "https://jsonbulut.com/json/userLogin.php"
        
        //alamofire
        //servis ziyaret edildikten sonra gelen sonuçlar res içinde olacak.
        AF.request(url, method: .get, parameters: params).responseJSON { (res) in
            //standart response for successful HTTP protokol
            if (res.response?.statusCode == 200){
                // print(res.data!)
                let userLogin = try? JSONDecoder().decode(UserLogin.self, from: res.data!)
                
                let status = userLogin?.user[0].durum
                let message = userLogin?.user[0].mesaj
                
                if (status == true){
                    //user login success
                    print(message!)
                    self.performSegue(withIdentifier: "product", sender: nil)
                }else{
                    print(message!)
                }
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

   
    
}

