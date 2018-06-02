//
//  ViewController.swift
//  projectMobile
//
//  Created by Eve on 3/19/2560 BE.
//  Copyright © 2560 net.bumail.onmo.praeploy. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import Firebase

class ViewController: UIViewController, FBSDKLoginButtonDelegate {

    private var authListener: FIRAuthStateDidChangeListenerHandle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var loginButton = FBSDKLoginButton()

        loginButton.frame.size = CGSize(width: view.frame.width - 150, height: 45)
        loginButton.center = self.view.center
        
        self.view.addSubview(loginButton)
        loginButton.delegate = self
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!){
        
        if error != nil{
            print("Fail")
            return
        }else{
            FBSDKLoginManager().logIn(withReadPermissions:["email"],from: self){(result,error) in
                if error != nil{
                    print("Fail2")
                    return
                }else{
                    let credential = FIRFacebookAuthProvider.credential(withAccessToken:FBSDKAccessToken.current().tokenString)
                    FIRAuth.auth()?.signIn(with: credential) {(user, error) in
                        if error != nil{
                            print("Fail3")
                            return
                        }else{
                            let user = FIRAuth.auth()?.currentUser
                            let name = user?.displayName
                            let img = user?.photoURL
                            print(name ?? String())
                            print(img ?? String())
                            let dView = self.storyboard?.instantiateViewController(withIdentifier: "homeView") as! catagoryFacebookViewController
                            dView.name2 = name!
                            dView.url = img! as NSURL!
                            self.present(dView, animated: true, completion: nil)
                            
                            
                        }
                    }
                    
                }
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        authListener = FIRAuth.auth()?.addStateDidChangeListener({ (auth, user) in
            if let user = user {
                let name = user.displayName
                let img = user.photoURL
                print(name ?? String())
                print(img ?? String())
                let dView = self.storyboard?.instantiateViewController(withIdentifier: "homeView") as! catagoryFacebookViewController
                dView.name2 = name!
                dView.url = img! as NSURL!
                self.present(dView, animated: true, completion: nil)
            }
        })
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        FIRAuth.auth()?.removeStateDidChangeListener(authListener!)
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!){
        let firebaseAuth = FIRAuth.auth()
        do{
            try firebaseAuth?.signOut()
        }catch let signOutError as NSError{
            print("Error signing out: %@", signOutError)
        }
    }

}

