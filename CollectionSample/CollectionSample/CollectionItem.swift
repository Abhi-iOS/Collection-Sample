//
//  CollectionItem.swift
//  CollectionSample
//
//  Created by Appinventiv on 10/02/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import UIKit

class CollectionItem: UICollectionViewCell {

    @IBOutlet weak var sampleImage: UIImageView!
    
    @IBOutlet weak var imageLabel: UILabel!
    
    static var itemNumber = 1
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageLabel.text = "Item\(CollectionItem.itemNumber)"
        sampleImage.backgroundColor = UIColor.blue
        CollectionItem.itemNumber += 1
        
    }
    

}
