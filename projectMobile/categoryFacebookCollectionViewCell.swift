//
//  categoryFacebookCollectionViewCell.swift
//  projectMobile
//
//  Created by Eve on 3/20/2560 BE.
//  Copyright © 2560 net.bumail.onmo.praeploy. All rights reserved.
//

import UIKit

class categoryFacebookCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lb_title: UILabel!
    
    var MycategFacebook : categFacebookVocab!{
        didSet{
            updateValue()
        }
    }
    
    func updateValue(){
        lb_title.text = MycategFacebook.title
        imageView.image = MycategFacebook.featuredImage
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
    }
    
}
