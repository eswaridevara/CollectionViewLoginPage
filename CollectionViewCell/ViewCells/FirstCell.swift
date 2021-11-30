//
//  FirstCell.swift
//  CollectionViewCell
//
//  Created by user205563 on 11/22/21.
//

import UIKit

class FirstCell: UICollectionViewCell {
    
    
    @IBOutlet weak var login: UILabel!
    @IBOutlet weak var facebook: UIButton!
    @IBOutlet weak var twitter: UIButton!
    @IBOutlet weak var or: UIButton!
    
    static let identifier = "FirstCell"
   
    override func awakeFromNib() {
        super.awakeFromNib()
       
        facebook.layer.cornerRadius = 20
        facebook.layer.masksToBounds = true
        twitter.layer.cornerRadius = 20
        twitter.layer.masksToBounds = true
        
        
    }

}
