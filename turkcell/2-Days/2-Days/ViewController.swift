//
//  ViewController.swift
//  2-Days
//
//  Created by Gulsah Altiparmak on 5.01.2021.
//

import UIKit

//touch hareketlerini dinlenen componentleri sağlayan library uikit

class ViewController: UIViewController {

    
    

    @IBOutlet weak var txtData: UITextField!
    
    @IBAction func fncDataAdd(_ sender: UIButton) {
        let txt = txtData.text
        names.append(txt!)
        
        forLoop()
    }
    
    var names: [Any] = ["ali", "veli", "hasan", "ayse", 10, true, 10.1]
 
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print("viewDidLoad Call") //any java daki objeye karşı geliyor
        
        // let - var
        let number1 = 10 // sabitler için kullanılır java ve c#da final anahtar kelimesine karşılık gelir
        //number1=20
        print("Number1 = \(number1)")
        print("Number1 = ",number1)
    
        let write = "Number: \(number1)"
        print(write)
        

        
        var number2 = 20
        number2 = 21
        print(number2)
        
        let  number3:Int = 30
        print(number3)
        
        let status = true
        
        let name = "Ali"
        
        let number4:Float = 10.5
        
        let stNumber1 = Int("ali") ?? 0
        
        let stNumber2 = Int("80") ?? 0
       
        let sum = stNumber1 + stNumber2
        print("sum: \(sum)")
        
        if let stNumber3 = Int("veli") , let stNumber4 = Int("90"){
            let sumx=stNumber3 + stNumber4
            print("Sumx : \(sumx)")
        }else{
            print("Number Format Fail")
        }
        let dNumber = 10.9
        let cDNmuber = Int(dNumber)
        print("cDNumber : \(cDNmuber)")
        //array using
        
        print(names[0])
      

        for name1 in names{
            print(name1)
        }
     
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //viewDidLoad()
        print( "viewDidAppear Call")
    }
    
    func forLoop()  {
        for name1 in names{
            print(name1)
        }
    }
  


}

