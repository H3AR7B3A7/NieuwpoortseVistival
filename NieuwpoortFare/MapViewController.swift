//
//  MapViewController.swift
//  Honolulu
//
//  Created by mobapp12 on 29/01/2020.
//  Copyright © 2020 H3AR7B3A7. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager.init()
    var data:StandsRepo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        data = StandsRepo.init()
        mapView.addAnnotations(data!.stands)
    }
    
    @IBAction func toggleMapType(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .satellite
        default:
            print("kan niet")
        }
    }
}

extension MapViewController {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedWhenInUse:
            mapView.showsUserLocation = true
        case .authorizedAlways: mapView.showsUserLocation = true
        case .notDetermined: print("Choices choices...")
        default:
            showNoPermissionAlert()
            
        }
    }
    
    func showNoPermissionAlert(){
        let alert = UIAlertController.init(title: "Caution", message: "For all features, enable localisation permissions in settings.", preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion:nil)
    }
}

extension MapViewController :MKMapViewDelegate{
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        // is annotation a point of interest, transform to class POI
        if let poi = annotation as? Stand{
            // check if a poi is present
            let identifier = poi.cat!
            if let customView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier){
                // pin exists, fill with poi
                customView.annotation = poi
                return customView
            }else{
                // pin bestond niet, build one
                let customView = MKAnnotationView.init(annotation: poi, reuseIdentifier: identifier)
                //customView.animatesDrop = true
                customView.canShowCallout = true
                
                switch poi.cat {
                case "Stage":
                    //customView.pinTintColor = UIColor.yellow
                    let stageImage = UIImage(named: "stage.png")
                    customView.image = stageImage
                case "Ehbo":
                    //customView.pinTintColor = UIColor.red
                    let ehboImage = UIImage(named: "ehbo.png")
                    customView.image = ehboImage
                case "Food":
                    //customView.pinTintColor = UIColor.purple
                    let foodImage = UIImage(named: "food.png")
                    customView.image = foodImage
                default:      //Hoe de fuck veranderd deze default alles????
                    //customView.pinTintColor = UIColor.black
                    //let pinImage = UIImage(named: "ehbo.png")
                    //customView.image = pinImage
                    print("kan niet")
                }
                
                return customView
            }
        }
        return nil
    }
    
    func mapViewDidFinishLoadingMap(_ mapView: MKMapView) {
        locationManager.startUpdatingLocation()
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let visibleRegion = MKCoordinateRegion.init(center: userLocation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.region = visibleRegion
    }
}
