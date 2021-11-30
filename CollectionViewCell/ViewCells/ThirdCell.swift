//
//  ThirdCell.swift
//  CollectionViewCell
//
//  Created by user205563 on 11/23/21.
//

import UIKit

class ThirdCell: UICollectionViewCell {
    
    
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var img: UIImageView!
    
    static let identifier = "ThirdCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
