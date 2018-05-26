//
//  UsersController.swift
//  LabPod
//
//  Created by Jonathan Varela on 5/26/18.
//  Copyright © 2018 Jonathan Varela. All rights reserved.
//

import UIKit
import SVProgressHUD
import SwiftyJSON

class UsersController: UIViewController {

    @IBOutlet weak var resultadoView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultadoView.layer.borderWidth = 2
        self.resultadoView.layer.borderColor = UIColor.orange.cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func consultarUsers(_ sender: UIButton) {
        SVProgressHUD.show(withStatus: "Cargando")
        AdministradorConexiones.getPostsEndpoint = "/users/"
        AdministradorConexiones.sharedInstance.getPostWithId( postId: 1, onSuccess: { json in
            DispatchQueue.main.async {
                self.resultadoView?.text = String(describing: json)
                SVProgressHUD.dismiss()
            }
        }, onFailure: { error in
            SVProgressHUD.dismiss()
            let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            self.show(alert, sender: nil)
        })
    }
    
    @IBAction func limpiar(_ sender: UIButton) {
        self.resultadoView.text = ""
    }
    
    
}
