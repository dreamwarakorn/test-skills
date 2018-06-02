//
//  catagoryFacebookViewController.swift
//  projectMobile
//
//  Created by Eve on 3/20/2560 BE.
//  Copyright © 2560 net.bumail.onmo.praeploy. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FBSDKLoginKit

class catagoryFacebookViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var btLogout: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var NavigaView: UIView!
    @IBOutlet weak var btMenu: UIButton!
    @IBOutlet weak var lbname: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var MenuView: UIView!
    @IBOutlet weak var leadingView: NSLayoutConstraint!

    var categFacebooks = categFacebookVocab.createCategFacebookList()
    var name2: String!
    var url: NSURL!
    var showMenu = false
    
    var ref = FIRDatabase.database().reference(withPath: "History")
    var memberItem = [score]()
    
    func fetchData(){
        ref.observe(.value, with: { snapshot in
            var memberItems = [score]()
            
            for item in snapshot.children{
                let memberData = score(snapshot: item as! FIRDataSnapshot)
                memberItems.append(memberData)
            }
            self.memberItem = memberItems
            self.tableView.reloadData()
        })
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memberItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreCell") as! UITableViewCell
        cell.textLabel?.text = memberItem[indexPath.row].title
        cell.detailTextLabel?.text = memberItem[indexPath.row].score
        
        cell.textLabel?.textColor = UIColor.white
        cell.detailTextLabel?.textColor = UIColor.white
        cell.textLabel?.font = UIFont(name: (cell.textLabel?.font.fontName)!, size:13)
        cell.detailTextLabel?.font = UIFont(name: (cell.detailTextLabel?.font.fontName)!, size:13)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categFacebooks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellA", for: indexPath ) as! categoryFacebookCollectionViewCell
        cell.MycategFacebook = self.categFacebooks[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let myView = storyboard?.instantiateViewController(withIdentifier: "shake") as! shakeFacebookViewController
        myView.datatemp = categFacebooks[indexPath.item]
        myView.name = name2
        //change page
        self.present(myView, animated: true, completion: nil)
        //navigationController?.pushViewController(myView, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        NavigaView.backgroundColor = UIColor.red
        
        let img1 = NSData(contentsOf: url as URL)
        let image: UIImage = UIImage(data: img1 as! Data)!
        if img1 != nil{
            btMenu.setImage(image, for: UIControlState.normal)
        }
        
        btLogout.layer.cornerRadius = 5
        btLogout.layer.borderColor = UIColor.white.cgColor
        btLogout.layer.borderWidth = 1.0
        btLogout.layer.masksToBounds = true
        
        self.btMenu.layer.cornerRadius = self.btMenu.frame.size.width / 2
        self.btMenu.clipsToBounds = true
        
        imageView.image = UIImage(data: img1 as! Data)
        imageView.layer.cornerRadius = self.imageView.frame.size.width / 2
        imageView.clipsToBounds = true
        lbname.text = name2
        
        MenuView.layer.shadowOpacity = 1
        MenuView.layer.shadowRadius = 5
        
        fetchData()
    }

    @IBAction func MenuAction(_ sender: Any) {
        if showMenu {
            leadingView.constant = -210
            UIView.animate(withDuration: 0.2, animations: {
                self.view.layoutIfNeeded()
            })
        }else{
            leadingView.constant = 0
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        showMenu = !showMenu
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        leadingView.constant = -210
        UIView.animate(withDuration: 0.2, animations: {
            self.view.layoutIfNeeded()
        })
        showMenu = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        leadingView.constant = -210
        UIView.animate(withDuration: 0.2, animations: {
            self.view.layoutIfNeeded()
        })
        showMenu = false
    }
    
    @IBAction func logoutAction(_ sender: Any) {
        let alertController = UIAlertController(title: "Log Out?", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        let logoutAction = UIAlertAction(title: "Log Out", style: UIAlertActionStyle.destructive) { (result : UIAlertAction) -> Void in
            let manager = FBSDKLoginManager()
            manager.logOut()
            FBSDKAccessToken.setCurrent(nil)
            FBSDKProfile.setCurrent(nil)
            
            let firebaseAuth = FIRAuth.auth()
            do{
                try firebaseAuth?.signOut()
                let dView = self.storyboard?.instantiateViewController(withIdentifier: "loginView") as! ViewController
                self.present(dView, animated: true, completion: nil)
            }catch let signOutError as NSError{
                print("Error signing out: %@", signOutError)
            }
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
            print("Cancel")
        }
        alertController.addAction(cancelAction)
        alertController.addAction(logoutAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
