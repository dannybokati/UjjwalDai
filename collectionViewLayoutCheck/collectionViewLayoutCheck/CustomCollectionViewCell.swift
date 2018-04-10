//
//  CustomCollectionViewCell.swift
//  collectionViewLayoutCheck
//
//  Created by Otonomis Limited on 4/10/18.
//  Copyright © 2018 Gtech Developeres. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    var label:UILabel = {
        let textLabel = UILabel()
        textLabel.text = "Center"
        textLabel.adjustsFontSizeToFitWidth = true
        textLabel.font = UIFont.systemFont(ofSize: 30.0)
        textLabel.isHighlighted = true
        textLabel.contentMode = .center
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(label)
        setUpLabelConstraints()
    }
    func setUpLabelConstraints(){
        label.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 0.1 * self.frame.width).isActive = true
        label.heightAnchor.constraint(equalToConstant: self.frame.height).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
