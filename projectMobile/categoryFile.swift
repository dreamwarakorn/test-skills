//
//  categoryFile.swift
//  projectMobile
//
//  Created by Eve on 3/19/2560 BE.
//  Copyright © 2560 net.bumail.onmo.praeploy. All rights reserved.
//

import Foundation
import UIKit
class categVocab{
    var title = ""
    var featuredImage:UIImage!
    
    init(title: String, featuredImage: UIImage){
        self.title = title
        self.featuredImage = featuredImage
    }
    
    static func createCategVocabList()->[categVocab]{
        return[
            categVocab(title: "Foods", featuredImage: UIImage(named: "food4-759x500.jpg")!),
            categVocab(title: "Fruits & Vegetables", featuredImage: UIImage(named: "Fruit-and-Vegetables1.jpg")!),
            categVocab(title: "Natural", featuredImage: UIImage(named: "IMG_341920.jpg")!),
            categVocab(title: "Animals", featuredImage: UIImage(named: "caracal-run.adapt.1900.1.jpg")!),
            categVocab(title: "Places", featuredImage: UIImage(named: "shutterstock-bangkok-thailand.jpg")!),
            categVocab(title: "Clothes", featuredImage: UIImage(named: "clothing-store-984396_960_720.jpg")!),
            categVocab(title: "Vehicles", featuredImage: UIImage(named: "bmw_car_on_road-wide.jpg")!),
            categVocab(title: "Special", featuredImage: UIImage(named: "food4-759x500.jpg")!)
        ]
    }
}
