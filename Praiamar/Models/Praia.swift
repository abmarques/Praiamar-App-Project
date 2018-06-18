//
//  Praia.swift
//  Praiamar Piloto
//
//  Created by abmarques on 10/06/18.
//  Copyright © 2018 abmarques. All rights reserved.
//

import UIKit
import MapKit

class Praia {
    
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    var urlDoRestaurante: URL!
    var urlDoHotel: URL!
    var latitudeDaPraia: CLLocationDegrees
    var longitudeDaPraia: CLLocationDegrees
    
    init(titulo: String, descricao: String, imagem: UIImage, urlDoRestaurante: URL, urlDoHotel: URL, latitudeDaPraia: CLLocationDegrees, longitudeDaPraia: CLLocationDegrees) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
        self.urlDoRestaurante = urlDoRestaurante
        self.urlDoHotel = urlDoHotel
        self.latitudeDaPraia = latitudeDaPraia
        self.longitudeDaPraia = longitudeDaPraia
    }
}
