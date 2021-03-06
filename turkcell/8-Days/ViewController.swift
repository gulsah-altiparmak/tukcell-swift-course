//
//  ViewController.swift
//  8-Days
//
//  Created by Gulsah Altiparmak on 19.01.2021.
//

import UIKit
import AVFoundation
import WebKit

class ViewController: UIViewController {
    var soundPlayer:AVAudioPlayer!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func btnPlay(_ sender: UIButton) {
        soundPlayer.play()
    }
    @IBAction func btnPause(_ sender: UIButton) {
        soundPlayer.stop()
        
    }
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       /*
        //local
        let path = Bundle.main.path(forResource: "muzik", ofType: "mp3")
        let url = URL(fileURLWithPath: path!)
        //soundPlayer = try! AVAudioPlayer(contentsOf: url)
        */
        
        //web
        DispatchQueue.main.async {
            let webString = "https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_5MG.mp3"
            let webUrl = URL(string: webString)
            self.soundPlayer = try! AVAudioPlayer(data: Data(contentsOf: webUrl!))
        }
     
        
       // let imgStringUrl = "https://i.pinimg.com/originals/38/d7/5b/38d75b985d9d08ce0959201f8198f405.jpg"
       // let imgStringUrl = "http://www.myhouseotel.com/uploads/images/set_001fName_20180306105510299.jpg"
        DispatchQueue.main.async { [self] in
            let imgStringUrl = "https://images.adsttc.com/media/images/5e1d/02c3/3312/fd58/9c00/06e9/large_jpg/NewHouse_SA_Photo_01.jpg"
            let url = URL(string: imgStringUrl)
            
            let data = try! Data(contentsOf: url!)
            self.imageView.alpha = 0
            self.imageView.image = UIImage(data: data, scale: 0.1)
            self.imageView.alpha = 1.0
        }
       
        //scale = 1 olunca resmi bire bir getirir.
        
        
        //youtube embed video show
        
        //dispatcQueue.main farklı bir sınıf olduğu için self ile referans vermek gerekir.
        DispatchQueue.main.async {
            let embedVideo = "<!doctype html> <html> <head> <meta charset='utf-8'> <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'> <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'> </head> <body> <div class='embed-responsive embed-responsive-16by9'> <iframe class='embed-responsive-item' src='https://www.youtube.com/embed/2CHXBMwxRWA?rel=0' allowfullscreen></iframe> </div> </body> </html>"
            self.webView.loadHTMLString(embedVideo, baseURL: nil)
        }
  
       
    }
/*    override func viewDidAppear(_ animated: Bool) {
        //yukardaki bekleyicilerden etkilenmemek için
        // kendi gövdesi içinde farklı bir işlem parçacığı olarak çalışır
        DispatchQueue.main.async {
            UIView.animate(withDuration: 1.0) {
                self.imageView.alpha = 1.0
            }
        }
      
    }*/


}

