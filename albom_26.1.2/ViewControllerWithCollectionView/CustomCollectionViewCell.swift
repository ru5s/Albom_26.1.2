//
//  CustomCollectionViewCell.swift
//  albom_26.1.2
//
//  Created by Ruslan Ismailov on 22/08/22.
//

import UIKit

//Не получилось сделать размер ячейки нормальным, либо маленький, либо если увеличиваю то они идут нахлестом, если сможете дайте фитбек по этому моменту, где я упустил момент присваивания размеров

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageInCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//        self.frame.size = CGSize(width: 200, height: 200)
    }
    
    
}

