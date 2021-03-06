//
//  UseMap.swift
//  12-Days
//
//  Created by Gulsah Altiparmak on 28.01.2021.
//

import UIKit
import MapKit

struct MapInfo {
    var title = ""
    var subtitle = ""
    var lat:CLLocationDegrees = 0.0
    var long:CLLocationDegrees = 0.0
    
}

class UseMap: UIViewController , MKMapViewDelegate{

    @IBOutlet weak var mapView: MKMapView!
    var pins:[MapInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        pinResult()
    }
    func pinResult() {
        let loc1 = MapInfo(title: "Dolmabahçe Sarayı", subtitle: "Saray", lat: 41.0353881,  long: 28.9936711)
        let loc2 = MapInfo(title: "İstanbul Modern Sanat Müzesi", subtitle: "Modern Sanat Müzesi", lat: 41.0299382,  long: 28.9711287)
        let loc3 = MapInfo(title: "Küçükpiyale", subtitle: "Küçükpiyale", lat: 41.038077, long: 28.96787)
        pins.append(loc1)
        pins.append(loc2)
        pins.append(loc3)
        
        mapPins()
        
    }
    func mapPins() {
        for item in pins {
            let pin = MKPointAnnotation()
            pin.title = item.title
            pin.subtitle = item.subtitle
            pin.coordinate = CLLocationCoordinate2D(latitude: item.lat, longitude: item.long)
            mapView.addAnnotation(pin)
            
        }
    }
    

}
