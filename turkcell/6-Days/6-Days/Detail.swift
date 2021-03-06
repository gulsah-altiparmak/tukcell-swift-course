//
//  Detail.swift
//  6-Days
//
//  Created by Gulsah Altiparmak on 14.01.2021.
//

import UIKit

class Detail: UIViewController {
    var item:Product = Product()

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var pTitle: UILabel!
    @IBOutlet weak var pPrice: UILabel!

    @IBOutlet weak var pDetail: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

      //  print(item.title)
        
        img.image = item.image
        pTitle.text = item.title
        pPrice.text = "\(item.price)₺"
        pDetail.text = item.detail
        
    }
    

 

}
