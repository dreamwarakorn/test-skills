//
//  CategoryViewController.swift
//  projectMobile
//
//  Created by Eve on 3/19/2560 BE.
//  Copyright © 2560 net.bumail.onmo.praeploy. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var leadingLayout: NSLayoutConstraint!
    @IBOutlet weak var btMenu: UIBarButtonItem!
    @IBOutlet weak var btSignin: UIButton!
    
    var showMenu = false
    var categVocabs = categVocab.createCategVocabList()
    
    @IBAction func AboutUsAction(_ sender: Any) {
        let myView = storyboard?.instantiateViewController(withIdentifier: "aboutus") as! AboutUsViewController
        navigationController?.pushViewController(myView, animated: true)
    }
    
    
    @IBAction func SignInAction(_ sender: Any) {
        let myView = storyboard?.instantiateViewController(withIdentifier: "loginView") as! ViewController
        navigationController?.pushViewController(myView, animated: true)
    }

    @IBAction func menuAction(_ sender: Any) {
        if showMenu {
            leadingLayout.constant = -210
            UIView.animate(withDuration: 0.2, animations: {
                self.view.layoutIfNeeded()
            })
        }else{
            leadingLayout.constant = 0
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        showMenu = !showMenu
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        leadingLayout.constant = -210
        UIView.animate(withDuration: 0.2, animations: {
            self.view.layoutIfNeeded()
        })
        showMenu = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        leadingLayout.constant = -210
        UIView.animate(withDuration: 0.2, animations: {
            self.view.layoutIfNeeded()
        })
        showMenu = false
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categVocabs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath ) as! categoryVocabCollectionViewCell
        cell.MycategVocab = self.categVocabs[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cell = collectionView.cellForItem(at: indexPath)
        let item : Int = indexPath.row
        
        if item == 0 {
            let myView = storyboard?.instantiateViewController(withIdentifier: "showShake") as! ShakeVocabViewController
            myView.datatemp = categVocabs[indexPath.item]
            navigationController?.pushViewController(myView, animated: true)
        }else{
            let alert = UIAlertView(title: "Fail", message: "Sign in to play anymore", delegate: nil, cancelButtonTitle: "OK")
            alert.show()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        btSignin.layer.cornerRadius = 5
        btSignin.layer.borderWidth = 1.0
        btSignin.layer.borderColor = UIColor.white.cgColor
        btSignin.layer.masksToBounds = true
        
        navigationController?.navigationBar.barTintColor = UIColor.red
        
         navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 5
        
        //navigation
        self.navigationController?.isNavigationBarHidden = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
