//
//  scoreFacebookViewController.swift
//  projectMobile
//
//  Created by Eve on 4/3/2560 BE.
//  Copyright © 2560 net.bumail.onmo.praeploy. All rights reserved.
//

import UIKit
import Social
import Accounts
import Firebase
import FirebaseAuth
import FirebaseDatabase

class scoreFacebookViewController: UIViewController {

    var tempscore:String!
    var ref : FIRDatabaseReference!
    var temptitle : String!
    var name3: String!
    
    @IBOutlet weak var lbBack: UILabel!
    @IBOutlet weak var txtscore: UILabel!
    @IBOutlet weak var shareFace: UIButton!
    
    @IBAction func playagainAction(_ sender: Any) {
        let myView = storyboard?.instantiateViewController(withIdentifier: "loginView") as! ViewController
        self.present(myView, animated: true, completion: nil)
    }
    @IBAction func shareAction(_ sender: Any) {
        self.shareToFacebook()
    }
    
    func shareToFacebook(){
        if(SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook)){
            let SocialMedia : SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            SocialMedia.completionHandler = {
                result -> Void in
                let getResult = result as SLComposeViewControllerResult
                switch(getResult.rawValue){
                case SLComposeViewControllerResult.cancelled.rawValue : print("Cancel")
                case SLComposeViewControllerResult.done.rawValue : print("Done")
                default : print("Error")
                }
                self.dismiss(animated: true, completion: nil)
            }
            let score = tempscore.description
            txtscore.text = score
            SocialMedia.setInitialText("#\(score)point #TestSkillApp #MobileBU")
            SocialMedia.add(UIImage(named: "logo1024.png"))
            
            self.present(SocialMedia, animated: true, completion: nil)
        }else {
            let alert = UIAlertController(title: "Accounts", message: "Please login to a Facebook account to share.", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let scorex = tempscore.description
        txtscore.text = scorex
        txtscore.layer.cornerRadius = txtscore.frame.size.width / 2
        txtscore.layer.borderWidth = 2.0
        txtscore.clipsToBounds = true
        
        //Custom Label
        lbBack.layer.cornerRadius = 8
        lbBack.layer.masksToBounds = true
        
        //navigation
        self.navigationController?.isNavigationBarHidden = true
        
        //self.view.backgroundColor = UIColor(red: 147/255, green: 230/255, blue: 237/255, alpha: 1)
        
        // Do any additional setup after loading the view.
        
        let user = FIRAuth.auth()?.currentUser
        let name = user?.displayName
        let img = user?.photoURL
        print(name ?? String())
        print(img ?? String())
        
        self.ref = FIRDatabase.database().reference(withPath: "History")
        let historyPlay = score(username: name3, title: temptitle, score: txtscore.text!)
        let historyItem = self.ref.child(self.temptitle!)
        historyItem.setValue(historyPlay.toAnyObject())
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
