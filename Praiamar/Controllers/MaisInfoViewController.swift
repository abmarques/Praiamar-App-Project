//
//  MaisInfoViewController.swift
//  Praiamar Piloto
//
//  Created by abmarques on 15/06/18.
//  Copyright © 2018 abmarques. All rights reserved.
//

import UIKit

class MaisInfoViewController: UIViewController {

    @IBOutlet weak var praiamarOficial: UILabel!
    @IBOutlet weak var sobre: UILabel!
    @IBOutlet weak var dataDeCriacao: UILabel!
    @IBOutlet weak var sigaNos: UILabel!
    @IBOutlet weak var logoInstagram: UIImageView!
    @IBOutlet weak var logoFacebook: UIImageView!
    @IBOutlet weak var logoTwitter: UIImageView!
    @IBOutlet weak var userPraiamar: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        praiamarOficial.layer.cornerRadius = 20
    }

}
