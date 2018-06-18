//
//  WebViewController.swift
//  Praiamar Piloto
//
//  Created by abmarques on 16/06/18.
//  Copyright © 2018 abmarques. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {


    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var urlServicos: URL!
    
    override func viewDidLoad() {
        if let unwrapedUrl = urlServicos {
            let request = URLRequest(url: unwrapedUrl)
            let session = URLSession.shared
            let task = session.dataTask(with: request) { (data, response, error) in
                if error == nil {
                    DispatchQueue.main.async {
                        self.webView.load(request)
                    }
                }
                else {
                    print(error as Any)
                }
            }
            task.resume()
        }
        
        super.viewDidLoad()
        
        webView.layer.cornerRadius = 20
    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        activityIndicator.startAnimating()
        
        NSLog("Carregando")
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        activityIndicator.stopAnimating()
        NSLog("Carregou")
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
