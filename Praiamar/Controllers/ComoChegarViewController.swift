//
//  ComoChegarViewController.swift
//  Praiamar Piloto
//
//  Created by abmarques on 15/06/18.
//  Copyright © 2018 abmarques. All rights reserved.
//

import UIKit
import MapKit

class ComoChegarViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var nomeDaPraia: UILabel!
    @IBOutlet weak var localizacao: UILabel!
    @IBOutlet weak var mapView: MKMapView!

    var praia: Praia!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nomeDaPraia.text = praia.titulo
        mapView.layer.cornerRadius = 20
        
        
        let latitude: CLLocationDegrees = praia.latitudeDaPraia
        let longitude: CLLocationDegrees = praia.longitudeDaPraia
        
        
        let deltaLatitude: CLLocationDegrees = 0.01
        let deltaLongitude: CLLocationDegrees = 0.01
        
        
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpanMake(deltaLatitude, deltaLongitude)
      
        let regiao: MKCoordinateRegion = MKCoordinateRegionMake(localizacao, areaVisualizacao)
        mapView.setRegion(regiao, animated: true)
        
        let anotacao = MKPointAnnotation()
        
        anotacao.coordinate = localizacao
        anotacao.title = praia.titulo
        
        mapView.addAnnotation(anotacao)
        
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
