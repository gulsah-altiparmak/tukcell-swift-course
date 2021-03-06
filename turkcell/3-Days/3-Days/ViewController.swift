//
//  ViewController.swift
//  3-Days
//
//  Created by Gulsah Altiparmak on 7.01.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtSurname: UITextField!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBAction func btnCall(_ sender: UIButton) {
        let name = txtName.text!
        let surname = txtSurname.text!
        
        let util = Util()
        let st = util.stringConcat(name: name, surname: surname)
        lblName.text = st
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // object -> new
        let util = Util()
        print(util.name)
        
        //no parameter call
        util.noParameter()
        
        // parameter call
        util.parameter(num1: 80, num2: 90)
        util.parameter(num1: 80, num2: 90)
        
        // return and parameter call
        let sum=util.parameterReturn(num1: 10, num2: 90)
        if (sum > 150){
            print("Sum: \(sum)")
        }
        else{
            print("Sum 150 !")
        }
        
        //parameter returns call
        let fnc = util.parameterReturns(num1: 80, num2: 90)
        print(fnc.0)
        print(fnc.1)
        
        // var -> name
        print("=========")
        print(util.name)
        util.name = "Ahmet"
        print(util.name)
        
        let utilx = Util()
        
        print(utilx.name)
        
        print("=========")
        let st = Settings(name: "Ali", number: 30)
        st.call()
        
        var dic = ["name":"Zehra","surname":"Silmem"]
        // add item
        dic["age"] = "35"
        dic["age"] = "36"
        dic["mail"] = "zehra@mail.com"
        dic["city"] = "Ankara"
        print(dic)
        //delete item
        dic.removeValue(forKey: "mail")
        print(dic)
        //all key and item data
        
        for item in dic {
            print(item)
        }
        for (key,value) in dic {
            print(key, value)
        }
       
        
        var dicx = [EUser.name: "Ayşe",EUser.surname:"Bilsin"]
        dicx[EUser.mail] = "ayse@mail.com"
        dicx[EUser.city] = "İstanbul"
        dicx[EUser.age] = "30"
        print(dicx[EUser.name]!)
        
        print(dicx)
        
        
    }
    
    


}

