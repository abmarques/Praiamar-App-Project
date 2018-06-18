//
//  DetalhesPraiaViewController.swift
//  Praiamar Piloto
//
//  Created by abmarques on 10/06/18.
//  Copyright © 2018 abmarques. All rights reserved.
//

import UIKit

class DetalhesPraiaViewController: UIViewController {

    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var praiaImageView: UIImageView!
    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    

    var praia: Praia!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        praiaImageView.image = praia.imagem
        nomeLabel.text = praia.titulo
        descricaoLabel.text = praia.descricao
        imageBackground.image = praia.imagem
        
        nomeLabel.layer.cornerRadius = 10
        nomeLabel.clipsToBounds = true
        
    }
    @IBAction func comoChegar(_ sender: Any) {
        performSegue(withIdentifier: "servicos", sender: nil)
    }
    
    @IBAction func restaurantes(_ sender: UIButton) {
        
        performSegue(withIdentifier: "urlServicos", sender: sender)
    }
    
    @IBAction func hoteis(_ sender: UIButton) {
        
        performSegue(withIdentifier: "urlServicos", sender: sender)
    }
    
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "servicos" {
            let proximaTela = segue.destination as! ComoChegarViewController
            proximaTela.praia = self.praia
        }else if segue.identifier == "urlServicos" {
            let urlWebView = segue.destination as! WebViewController
            let btnClicado = sender as! UIButton
            if btnClicado.titleLabel?.text == "Restaurantes" {
                urlWebView.urlServicos = praia.urlDoRestaurante
            } else if btnClicado.titleLabel?.text == "Hoteis" {
                  urlWebView.urlServicos = praia.urlDoHotel
            }
        }
        
        
    }
}
