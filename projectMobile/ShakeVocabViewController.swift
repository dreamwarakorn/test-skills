//
//  ShakeVocabViewController.swift
//  projectMobile
//
//  Created by Eve on 3/21/2560 BE.
//  Copyright © 2560 net.bumail.onmo.praeploy. All rights reserved.
//

import UIKit

class ShakeVocabViewController: UIViewController {

    var datatemp: categVocab!
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        let myView = storyboard?.instantiateViewController(withIdentifier: "quiz") as! quizVocabViewController
        
        myView.tempdata = datatemp
        //change page
        navigationController?.pushViewController(myView, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //navigation
        self.navigationController?.isNavigationBarHidden = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
