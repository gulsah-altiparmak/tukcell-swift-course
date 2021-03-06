//
//  ViewController.swift
//  12-Days
//
//  Created by Gulsah Altiparmak on 28.01.2021.
//

import UIKit
import NextLevel

class ViewController: UIViewController {

    @IBOutlet weak var previewView: UIView!
    @IBOutlet weak var imgProfile: UIImageView!
    @IBAction func btnOpenCamera(_ sender: UIButton) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenBounds = UIScreen.main.bounds
        self.previewView = UIView(frame: screenBounds)
        if let previewView = self.previewView {
            previewView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            previewView.backgroundColor = UIColor.black
            NextLevel.shared.previewLayer.frame = previewView.bounds
            previewView.layer.addSublayer(NextLevel.shared.previewLayer)
            self.view.addSubview(previewView)
        }
        // Do any additional setup after loading the view.
    }


}

