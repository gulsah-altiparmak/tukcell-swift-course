//
//  DetailViewController.swift
//  3-Days
//
//  Created by Gulsah Altiparmak on 7.01.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBAction func btnExit(_ sender: UIButton) {
        //zombi birikintisini önler
        //dismiss diyince var olan sayfanın değelerini de gönderir.
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  

}
