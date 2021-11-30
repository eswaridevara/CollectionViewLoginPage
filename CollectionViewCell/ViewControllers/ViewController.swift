//
//  ViewController.swift
//  CollectionViewCell
//
//  Created by user205563 on 11/21/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wlc: UILabel!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var singUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        login.layer.cornerRadius = 25
        login.layer.masksToBounds = true
    }


}

