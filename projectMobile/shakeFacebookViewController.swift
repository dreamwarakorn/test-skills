//
//  shakeFacebookViewController.swift
//  projectMobile
//
//  Created by Eve on 4/3/2560 BE.
//  Copyright © 2560 net.bumail.onmo.praeploy. All rights reserved.
//

import UIKit

class shakeFacebookViewController: UIViewController {

    var datatemp : categFacebookVocab!
    var name: String!
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        let myView = storyboard?.instantiateViewController(withIdentifier: "quizFacebook") as! quizFacebookViewController
        
        myView.tempdata = datatemp
        myView.tempName = name
        //change page
        self.present(myView, animated: true, completion: nil)
        //navigationController?.pushViewController(myView, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
