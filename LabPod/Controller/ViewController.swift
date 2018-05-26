//
//  ViewController.swift
//  LabPod
//
//  Created by Jonathan Varela on 5/26/18.
//  Copyright © 2018 Jonathan Varela. All rights reserved.
//

import UIKit
import SVProgressHUD
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var resultadoView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultadoView.layer.borderWidth = 2
        self.resultadoView.layer.borderColor = UIColor.orange.cgColor
        
        //SVProgressHUD.show(withStatus: "Cargando")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func consultarAPI(_ sender: UIButton) {
    }
    
}

