//
//  categoryVocabCollectionViewCell.swift
//  projectMobile
//
//  Created by Eve on 3/19/2560 BE.
//  Copyright © 2560 net.bumail.onmo.praeploy. All rights reserved.
//

import UIKit

class categoryVocabCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    
    var MycategVocab : categVocab!{
        didSet{
            updateValue()
        }
    }
    
    func updateValue(){
        lbTitle.text = MycategVocab.title
        imageView.image = MycategVocab.featuredImage
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
    }
    
}
