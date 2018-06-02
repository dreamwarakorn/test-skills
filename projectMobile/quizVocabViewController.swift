//
//  quizVocabViewController.swift
//  projectMobile
//
//  Created by Eve on 3/21/2560 BE.
//  Copyright © 2560 net.bumail.onmo.praeploy. All rights reserved.
//

import UIKit

class quizVocabViewController: UIViewController {
    
    @IBOutlet weak var GifView2: UIImageView!
    @IBOutlet weak var numItem: UILabel!
    @IBOutlet weak var imgShake: UIImageView!
    @IBOutlet weak var lbshake: UILabel!
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var titleTemp: UILabel!
    @IBOutlet weak var scorelabel: UILabel!
    @IBOutlet weak var scoreText: UILabel!
    @IBOutlet weak var lbBack4: UILabel!
   
    var CorrectAnswer = String()
    var tempdata : categVocab!
   
    var i:Int = 0
   
    @IBOutlet weak var LabelEnd: UILabel!
    
    //score
    var score = Int(0)
    
    func RamdomQuestions () {
        if(titleTemp.text == "Foods"){
            var RandomNumber = arc4random() % 10
            RandomNumber += 1
            switch (RandomNumber) {
            
            case 1:
                QuestionLabel.text = "a large circle of flat bread baked with cheese, tomatoes, and sometimes meat and vegetables spread on top"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("ketchup", for: UIControlState.normal)
                button2.setTitle ("pizza", for: UIControlState.normal)
                button3.setTitle ("pasta", for: UIControlState.normal)
                button4.setTitle ("croissant", for: UIControlState.normal)
                CorrectAnswer = "2"
            
                break
            case 2:
                QuestionLabel.text = "one of several small balls of meat that are eaten hot, often with a sauce"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("meatball", for: UIControlState.normal)
                button2.setTitle ("pizza", for: UIControlState.normal)
                button3.setTitle ("sandwich", for: UIControlState.normal)
                button4.setTitle ("mayonnaise", for: UIControlState.normal)
                CorrectAnswer = "1"
            
                break
            case 3:
                QuestionLabel.text = "a thin, flat, round cake made from flour, sugar, milk, and eggs, cooked in a pan and usually eaten with maple syrup for breakfast"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("spaghetti", for: UIControlState.normal)
                button2.setTitle ("pancake", for: UIControlState.normal)
                button3.setTitle ("cereal", for: UIControlState.normal)
                button4.setTitle ("bread", for: UIControlState.normal)
                CorrectAnswer = "2"
            
                break
                
            case 4:
                QuestionLabel.text = "a mixture of uncooked vegetables, usually including lettuce, eaten either as a separate dish or with other food"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("sandwich", for: UIControlState.normal)
                button2.setTitle ("bagel", for: UIControlState.normal)
                button3.setTitle ("salad", for: UIControlState.normal)
                button4.setTitle ("toast", for: UIControlState.normal)
                CorrectAnswer = "3"
            
                break
                
            case 5:
                QuestionLabel.text = "two pieces of bread with cheese, salad, or meat, usually cold, between them"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("meatball", for: UIControlState.normal)
                button2.setTitle ("noodles", for: UIControlState.normal)
                button3.setTitle ("rice", for: UIControlState.normal)
                button4.setTitle ("sandwich", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 6:
                QuestionLabel.text = "a thick, flat piece of meat or fish, especially meat from a cow"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("hamburger", for: UIControlState.normal)
                button2.setTitle ("steak", for: UIControlState.normal)
                button3.setTitle ("croissant", for: UIControlState.normal)
                button4.setTitle ("noodles", for: UIControlState.normal)
                CorrectAnswer = "2"
                
                break
                
            case 7:
                QuestionLabel.text = "pasta made in the form of long, thin strings"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("spaghetti", for: UIControlState.normal)
                button2.setTitle ("rice", for: UIControlState.normal)
                button3.setTitle ("sausage", for: UIControlState.normal)
                button4.setTitle ("noodles", for: UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 8:
                QuestionLabel.text = "a round, flat piece of minced beef, fried and usually eaten between two halves of a bread roll"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("sandwich", for: UIControlState.normal)
                button2.setTitle ("fish", for: UIControlState.normal)
                button3.setTitle ("hamburger", for: UIControlState.normal)
                button4.setTitle ("roll", for: UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 9:
                QuestionLabel.text = "a thin, tube-like case containing meat that has been cut into very small pieces and mixed with spices"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("sausage", for: UIControlState.normal)
                button2.setTitle ("fish", for: UIControlState.normal)
                button3.setTitle ("egg", for: UIControlState.normal)
                button4.setTitle ("shrimp", for: UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 10:
                QuestionLabel.text = "a usually hot, liquid food made from vegetables, meat, or fish"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("cheese", for: UIControlState.normal)
                button2.setTitle ("bagel", for: UIControlState.normal)
                button3.setTitle ("croissant", for: UIControlState.normal)
                button4.setTitle ("soup", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
            
            default:
                break
            }
        }
    }
    
    func Hide (){
        LabelEnd.isHidden = true
        imgShake.isHidden = true
        lbshake.isHidden = true
        scorelabel.isHidden = false
        scoreText.isHidden = false
        numItem.isHidden = true
        lbBack4.isHidden = true
    }
    
    func UnHide () {
        LabelEnd.isHidden = false
        imgShake.isHidden = false
        lbshake.isHidden = false
        scorelabel.isHidden = true
        scoreText.isHidden = true
        numItem.isHidden = false
        lbBack4.isHidden = false
    }
    
    @IBAction func Button1Action(sender: AnyObject) {
        UnHide ()
        if (CorrectAnswer == "1") {
            LabelEnd.text = "Correct"
            LabelEnd.textColor = UIColor.white
            LabelEnd.backgroundColor = UIColor.green
            //score
            score = score + 1
            scorelabel.text = "\(score)"
            QuestionLabel.isHidden = true
            button1.isHidden = true
            button2.isHidden = true
            button3.isHidden = true
            button4.isHidden = true
            titleTemp.isHidden = true
        }
        else{
            LabelEnd.text = "Incorrect"
            LabelEnd.textColor = UIColor.white
            LabelEnd.backgroundColor = UIColor.red
            score = score + 0
            scorelabel.text = "\(score)"
            QuestionLabel.isHidden = true
            button1.isHidden = true
            button2.isHidden = true
            button3.isHidden = true
            button4.isHidden = true
            titleTemp.isHidden = true
        }
    }
    
    func Button2Action(sender: AnyObject) {
        UnHide ()
        if (CorrectAnswer == "2") {
            LabelEnd.text = "Correct"
            LabelEnd.textColor = UIColor.white
            LabelEnd.backgroundColor = UIColor.green
            score = score + 1
            scorelabel.text = "\(score)"
            QuestionLabel.isHidden = true
            button1.isHidden = true
            button2.isHidden = true
            button3.isHidden = true
            button4.isHidden = true
            titleTemp.isHidden = true
            
        }
        else{
            LabelEnd.text = "Incorrect"
            LabelEnd.textColor = UIColor.white
            LabelEnd.backgroundColor = UIColor.red
            score = score + 0
            scorelabel.text = "\(score)"
            QuestionLabel.isHidden = true
            button1.isHidden = true
            button2.isHidden = true
            button3.isHidden = true
            button4.isHidden = true
            titleTemp.isHidden = true
        }
    }
    
    func Button3Action(sender: AnyObject) {
        UnHide ()
        if (CorrectAnswer == "3") {
            LabelEnd.text = "Correct"
            LabelEnd.textColor = UIColor.white
            LabelEnd.backgroundColor = UIColor.green
            score = score + 1
            scorelabel.text = "\(score)"
            QuestionLabel.isHidden = true
            button1.isHidden = true
            button2.isHidden = true
            button3.isHidden = true
            button4.isHidden = true
            titleTemp.isHidden = true
        }
        else{
            LabelEnd.text = "Incorrect"
            LabelEnd.textColor = UIColor.white
            LabelEnd.backgroundColor = UIColor.red
            score = score + 0
            scorelabel.text = "\(score)"
            QuestionLabel.isHidden = true
            button1.isHidden = true
            button2.isHidden = true
            button3.isHidden = true
            button4.isHidden = true
            titleTemp.isHidden = true
        }
    }
    
    func Button4Action(sender: AnyObject) {
        UnHide ()
        if (CorrectAnswer == "4") {
            LabelEnd.text = "Correct"
            LabelEnd.textColor = UIColor.white
            LabelEnd.backgroundColor = UIColor.green
            score = score + 1
            scorelabel.text = "\(score)"
            QuestionLabel.isHidden = true
            button1.isHidden = true
            button2.isHidden = true
            button3.isHidden = true
            button4.isHidden = true
            titleTemp.isHidden = true
        }
        else{
            LabelEnd.text = "Incorrect"
            LabelEnd.textColor = UIColor.white
            LabelEnd.backgroundColor = UIColor.red
            score = score + 0
            scorelabel.text = "\(score)"
            QuestionLabel.isHidden = true
            button1.isHidden = true
            button2.isHidden = true
            button3.isHidden = true
            button4.isHidden = true
            titleTemp.isHidden = true
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //BG Gif
        GifView2.loadGif(name: "BG")
        
        //RandomQuiz()
        titleTemp.text = tempdata.title
        
        //Custom Label
        QuestionLabel.backgroundColor = UIColor.white
        QuestionLabel.layer.cornerRadius = 8
        QuestionLabel.layer.masksToBounds = true
        lbBack4.backgroundColor = UIColor.white
        lbBack4.layer.cornerRadius = 8
        lbBack4.layer.masksToBounds = true
        
        //Custom Button
        button1.layer.cornerRadius = 5
        button2.layer.cornerRadius = 5
        button3.layer.cornerRadius = 5
        button4.layer.cornerRadius = 5
        
        Hide()
        RamdomQuestions()
        QuestionLabel.isHidden = false
        button1.isHidden = false
        button2.isHidden = false
        button3.isHidden = false
        button4.isHidden = false
        titleTemp.isHidden = false
        
        //score
        scorelabel.text = "\(score)"
        
        numItem.text = "1 of 10"
        numItem.isHidden = true
        
        //navigation
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        Hide()
        RamdomQuestions()
        QuestionLabel.isHidden = false
        button1.isHidden = false
        button2.isHidden = false
        button3.isHidden = false
        button4.isHidden = false
        titleTemp.isHidden = false
        GifView2.isHidden = false
        
        i += 1
        print(i)
        
        if(i == 10){
            let myView = storyboard?.instantiateViewController(withIdentifier: "score") as! ScoreViewController
            let myScore = score.description
            myView.tempscore = myScore
         
            navigationController?.pushViewController(myView, animated: true)
        }
        
        
        //number of item
        let x : Int = i + 1
        numItem.text = "\(String(x)) of 10"
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
