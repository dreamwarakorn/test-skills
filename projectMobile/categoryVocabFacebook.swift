//
//  categoryVocabFacebook.swift
//  projectMobile
//
//  Created by Eve on 3/20/2560 BE.
//  Copyright © 2560 net.bumail.onmo.praeploy. All rights reserved.
//

import Foundation
import UIKit
class categFacebookVocab{
    var title = ""
    var featuredImage:UIImage!
    
    init(title: String, featuredImage: UIImage){
        self.title = title
        self.featuredImage = featuredImage
    }
    
    static func createCategFacebookList()->[categFacebookVocab]{
        return[
            categFacebookVocab(title: "Foods", featuredImage: UIImage(named: "food4-759x500.jpg")!),
            categFacebookVocab(title: "Fruits & Vegetables", featuredImage: UIImage(named: "Fruit-and-Vegetables1.jpg")!),
            categFacebookVocab(title: "Natural", featuredImage: UIImage(named: "IMG_341920.jpg")!),
            categFacebookVocab(title: "Animals", featuredImage: UIImage(named: "caracal-run.adapt.1900.1.jpg")!),
            categFacebookVocab(title: "Places", featuredImage: UIImage(named: "shutterstock-bangkok-thailand.jpg")!),
            categFacebookVocab(title: "Clothes", featuredImage: UIImage(named: "clothing-store-984396_960_720.jpg")!),
            categFacebookVocab(title: "Vehicles", featuredImage: UIImage(named: "bmw_car_on_road-wide.jpg")!),
            categFacebookVocab(title: "Special", featuredImage: UIImage(named: "food4-759x500.jpg")!)
        ]
    }
}
