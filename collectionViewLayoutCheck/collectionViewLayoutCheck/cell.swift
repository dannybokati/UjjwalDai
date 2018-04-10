//
//  cell.swift
//  collectionViewLayoutCheck
//
//  Created by Danny Bokati on 4/9/18.
//  Copyright © 2018 Gtech Developeres. All rights reserved.
//

import UIKit

class cell: UICollectionViewCell {
    
    var cellLabel: UILabel!
    var cellText = "Beast"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        // initialising the cell label
        
     
        
        cellLabel = UILabel(frame: CGRect(x: (frame.size.width / 2) - ((frame.size.width / 4) / 2), y: (frame.size.height / 2) - ((frame.size.height / 4) / 2), width: frame.size.width / 4, height: frame.size.height / 4))
        cellLabel.textAlignment = .center
        contentView.addSubview(cellLabel)
    }
    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
