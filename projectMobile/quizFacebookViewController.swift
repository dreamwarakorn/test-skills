//
//  quizFacebookViewController.swift
//  projectMobile
//
//  Created by Eve on 4/3/2560 BE.
//  Copyright © 2560 net.bumail.onmo.praeploy. All rights reserved.
//

import UIKit

class quizFacebookViewController: UIViewController {
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
    @IBOutlet weak var GifView: UIImageView!
    @IBOutlet weak var lbBack3: UILabel!
    
    var CorrectAnswer = String()
    var tempName : String!
    var tempdata : categFacebookVocab!
    
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
            
        else if(titleTemp.text == "Fruits & Vegetables"){
            var RandomNumber = arc4random() % 10
            RandomNumber += 1
            switch (RandomNumber) {
                
            case 1:
                QuestionLabel.text = "the small, round, dark red root of a plant, eaten cooked as a vegetable, especially cold in salads"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("pumpkin", for: UIControlState.normal)
                button2.setTitle ("beetroot", for: UIControlState.normal)
                button3.setTitle ("blackberry", for: UIControlState.normal)
                button4.setTitle ("lime", for: UIControlState.normal)
                CorrectAnswer = "2"
                
                break
            case 2:
                QuestionLabel.text = "a long pointed orange root eaten as a vegetable"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("carrot", for: UIControlState.normal)
                button2.setTitle ("radish", for: UIControlState.normal)
                button3.setTitle ("corn", for: UIControlState.normal)
                button4.setTitle ("banana", for: UIControlState.normal)
                CorrectAnswer = "1"
                
                break
            case 3:
                QuestionLabel.text = "plants, such as wheat, maize, oats, and barley, that can be used to produce flour"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("zucchini", for: UIControlState.normal)
                button2.setTitle ("banana", for: UIControlState.normal)
                button3.setTitle ("lettuce", for: UIControlState.normal)
                button4.setTitle ("corn", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
            case 4:
                QuestionLabel.text = "a round vegetable that grows underground and has white flesh with light brown, red, or pink skin, or the plant on which these grow"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("onion", for: UIControlState.normal)
                button2.setTitle ("avocado", for: UIControlState.normal)
                button3.setTitle ("potato", for: UIControlState.normal)
                button4.setTitle ("nectarine", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 5:
                QuestionLabel.text = "a round, red fruit with a lot of seeds, eaten cooked or uncooked as a vegetable, for example in salads or sauces"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("lettuce", for: UIControlState.normal)
                button2.setTitle ("spring onion", for: UIControlState.normal)
                button3.setTitle ("papaya", for: UIControlState.normal)
                button4.setTitle ("tomato", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 6:
                QuestionLabel.text = "a round fruit with firm, white flesh and a green, red, or yellow skin"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("orange", for: UIControlState.normal)
                button2.setTitle ("apple", for: UIControlState.normal)
                button3.setTitle ("watermelon", for: UIControlState.normal)
                button4.setTitle ("plum", for:
                    UIControlState.normal)
                CorrectAnswer = "2"
                
                break
                
            case 7:
                QuestionLabel.text = "a long, curved fruit with a yellow skin and soft, sweet, white flesh inside"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("banana", for: UIControlState.normal)
                button2.setTitle ("apricot", for: UIControlState.normal)
                button3.setTitle ("fig", for: UIControlState.normal)
                button4.setTitle ("lychee", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 8:
                QuestionLabel.text = "a small, round, purple or pale green fruit that you can eat or make into wine"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("apple", for: UIControlState.normal)
                button2.setTitle ("pineapple", for: UIControlState.normal)
                button3.setTitle ("grape", for: UIControlState.normal)
                button4.setTitle ("pomegranate", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 9:
                QuestionLabel.text = "an oval fruit with brown, hairy skin and green flesh"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("kiwi", for: UIControlState.normal)
                button2.setTitle ("blackcurrant", for: UIControlState.normal)
                button3.setTitle ("lemon", for: UIControlState.normal)
                button4.setTitle ("melon", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 10:
                QuestionLabel.text = "an oval tropical fruit with a smooth skin, orange-yellow flesh, and a large, hard seed in the middle"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("pea", for: UIControlState.normal)
                button2.setTitle ("boysenberry", for: UIControlState.normal)
                button3.setTitle ("pear", for: UIControlState.normal)
                button4.setTitle ("mango", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            default:
                break
            }
        }
        else if(titleTemp.text == "Animals"){
            var RandomNumber = arc4random() % 10
            RandomNumber += 1
            switch (RandomNumber) {
                
            case 1:
                QuestionLabel.text = "a common animal with four legs, especially kept by people as a pet or to hunt or guard things"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("fox", for: UIControlState.normal)
                button2.setTitle ("dog", for: UIControlState.normal)
                button3.setTitle ("cat", for: UIControlState.normal)
                button4.setTitle ("horse", for: UIControlState.normal)
                CorrectAnswer = "2"
                
                break
            case 2:
                QuestionLabel.text = "an animal that lives in water, is covered with scales, and breathes by taking water in through its mouth, or the flesh of these animals eaten as food"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("fish", for: UIControlState.normal)
                button2.setTitle ("chicken", for: UIControlState.normal)
                button3.setTitle ("frog", for: UIControlState.normal)
                button4.setTitle ("turtle", for: UIControlState.normal)
                CorrectAnswer = "1"
                
                break
            case 3:
                QuestionLabel.text = "an animal that lives in hot countries, has a long tail, and climbs trees."
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("rat", for: UIControlState.normal)
                button2.setTitle ("kangaroo", for: UIControlState.normal)
                button3.setTitle ("rabbit", for: UIControlState.normal)
                button4.setTitle ("monkey", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
            case 4:
                QuestionLabel.text = "a bird that lives by water and has webbed feet ( feet with skin between the toes), a short neck, and a large beak"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("bee", for: UIControlState.normal)
                button2.setTitle ("owl", for: UIControlState.normal)
                button3.setTitle ("duck", for: UIControlState.normal)
                button4.setTitle ("spider", for: UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 5:
                QuestionLabel.text = "a small animal that has smooth skin, lives in water and on land, has long powerful back legs with which it jumps from place to place, has no tail, and is usually greenish-brown in colour"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("camel", for: UIControlState.normal)
                button2.setTitle ("crocodile", for: UIControlState.normal)
                button3.setTitle ("dolphin", for: UIControlState.normal)
                button4.setTitle ("frog", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 6:
                QuestionLabel.text = "an African wild animal that looks like a horse, with black or brown and white lines on its body"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("giraffe", for: UIControlState.normal)
                button2.setTitle ("zebra", for: UIControlState.normal)
                button3.setTitle ("hippopotamus", for: UIControlState.normal)
                button4.setTitle ("scorpion", for:
                    UIControlState.normal)
                CorrectAnswer = "2"
                
                break
                
            case 7:
                QuestionLabel.text = "a large African animal with a very long neck and long legs"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("giraffe", for: UIControlState.normal)
                button2.setTitle ("eagle", for: UIControlState.normal)
                button3.setTitle ("chimpanzee", for: UIControlState.normal)
                button4.setTitle ("puppy", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 8:
                QuestionLabel.text = "a large wild animal of the cat family with yellowish-brown fur that lives in Africa and southern Asia"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("alligator", for: UIControlState.normal)
                button2.setTitle ("cheetah", for: UIControlState.normal)
                button3.setTitle ("lion", for: UIControlState.normal)
                button4.setTitle ("tiger", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 9:
                QuestionLabel.text = "a large fish that has sharp teeth and a pointed fin on its back"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("shark", for: UIControlState.normal)
                button2.setTitle ("dolphin", for: UIControlState.normal)
                button3.setTitle ("hippopotamus", for: UIControlState.normal)
                button4.setTitle ("panda", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 10:
                QuestionLabel.text = "a large pink, brown, or black farm animal with short legs and a curved tail, kept for its meat"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("ant", for: UIControlState.normal)
                button2.setTitle ("bear", for: UIControlState.normal)
                button3.setTitle ("deer", for: UIControlState.normal)
                button4.setTitle ("pig", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            default:
                break
            }
        }
        else if(titleTemp.text == "Natural"){
            var RandomNumber = arc4random() % 10
            RandomNumber += 1
            switch (RandomNumber) {
                
            case 1:
                QuestionLabel.text = "a large area of land covered with trees and plants, usually larger than a wood, or the trees and plants themselves"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("fox", for: UIControlState.normal)
                button2.setTitle ("forest", for: UIControlState.normal)
                button3.setTitle ("mountain", for: UIControlState.normal)
                button4.setTitle ("alga", for: UIControlState.normal)
                CorrectAnswer = "2"
                
                break
            case 2:
                QuestionLabel.text = "the part of a plant that is often brightly coloured and has a pleasant smell, or the type of plant that produces these"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("flower", for: UIControlState.normal)
                button2.setTitle ("alga", for: UIControlState.normal)
                button3.setTitle ("frog", for: UIControlState.normal)
                button4.setTitle ("waterfall", for: UIControlState.normal)
                CorrectAnswer = "1"
                
                break
            case 3:
                QuestionLabel.text = "a tall plant that has a wooden trunk and branches that grow from its upper part"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("river", for: UIControlState.normal)
                button2.setTitle ("kangaroo", for: UIControlState.normal)
                button3.setTitle ("volcano", for: UIControlState.normal)
                button4.setTitle ("tree", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
            case 4:
                QuestionLabel.text = "a raised part of the earth's surface, much larger than a hill, the top of which might be covered in snow"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("forest", for: UIControlState.normal)
                button2.setTitle ("owl", for: UIControlState.normal)
                button3.setTitle ("mountain", for: UIControlState.normal)
                button4.setTitle ("flower", for: UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 5:
                QuestionLabel.text = "a natural wide flow of fresh water across the land into the sea, a lake, or another river"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("forest", for: UIControlState.normal)
                button2.setTitle ("crocodile", for: UIControlState.normal)
                button3.setTitle ("dolphin", for: UIControlState.normal)
                button4.setTitle ("river", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 6:
                QuestionLabel.text = "water, especially from a river or stream, dropping from a higher to a lower point, sometimes from a great height"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("giraffe", for: UIControlState.normal)
                button2.setTitle ("waterfall", for: UIControlState.normal)
                button3.setTitle ("scorpion", for: UIControlState.normal)
                button4.setTitle ("river", for:
                    UIControlState.normal)
                CorrectAnswer = "2"
                
                break
                
            case 7:
                QuestionLabel.text = "the area above the earth, in which clouds, the sun, etc. can be seen"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("sky", for: UIControlState.normal)
                button2.setTitle ("eagle", for: UIControlState.normal)
                button3.setTitle ("flower", for: UIControlState.normal)
                button4.setTitle ("volcano", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 8:
                QuestionLabel.text = "a current of air moving approximately horizontally, especially one strong enough to be felt"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("rain", for: UIControlState.normal)
                button2.setTitle ("cheetah", for: UIControlState.normal)
                button3.setTitle ("wind", for: UIControlState.normal)
                button4.setTitle ("snow", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 9:
                QuestionLabel.text = "a mountain with a large, circular hole at the top through which lava (hot liquid rock) gases, steam, and dust are or have been forced out"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("volcano", for: UIControlState.normal)
                button2.setTitle ("forest", for: UIControlState.normal)
                button3.setTitle ("tree", for: UIControlState.normal)
                button4.setTitle ("sky", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 10:
                QuestionLabel.text = "the small, soft, white pieces of ice that sometimes fall from the sky when it is cold, or the white layer on the ground and other surfaces that it forms"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("sun", for: UIControlState.normal)
                button2.setTitle ("sky", for: UIControlState.normal)
                button3.setTitle ("deer", for: UIControlState.normal)
                button4.setTitle ("snow", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            default:
                break
            }
        }
        else if(titleTemp.text == "Places"){
            var RandomNumber = arc4random() % 10
            RandomNumber += 1
            switch (RandomNumber) {
                
            case 1:
                QuestionLabel.text = "a place where aircraft regularly take off and land, with buildings for passengers to wait in"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("hospital", for: UIControlState.normal)
                button2.setTitle ("airport", for: UIControlState.normal)
                button3.setTitle ("supermarket", for: UIControlState.normal)
                button4.setTitle ("church", for: UIControlState.normal)
                CorrectAnswer = "2"
                
                break
            case 2:
                QuestionLabel.text = "a place where people who are ill or injured are treated and taken care of by doctors and nurses"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("hospital", for: UIControlState.normal)
                button2.setTitle ("museum", for: UIControlState.normal)
                button3.setTitle ("post office", for: UIControlState.normal)
                button4.setTitle ("bus stop", for: UIControlState.normal)
                CorrectAnswer = "1"
                
                break
            case 3:
                QuestionLabel.text = "a place where meals are prepared and served to customers"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("supermarket", for: UIControlState.normal)
                button2.setTitle ("barber shop", for: UIControlState.normal)
                button3.setTitle ("bowling alley", for: UIControlState.normal)
                button4.setTitle ("restaurant", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
            case 4:
                QuestionLabel.text = "a building where objects of historical, scientific, or artistic interest are kept"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("fire department", for: UIControlState.normal)
                button2.setTitle ("library", for: UIControlState.normal)
                button3.setTitle ("museum", for: UIControlState.normal)
                button4.setTitle ("movie theater", for: UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 5:
                QuestionLabel.text = "a place where children go to be educated"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("apartment building", for: UIControlState.normal)
                button2.setTitle ("bank", for: UIControlState.normal)
                button3.setTitle ("mall", for: UIControlState.normal)
                button4.setTitle ("school", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 6:
                QuestionLabel.text = "a large, usually covered, shopping area where cars are not allowed"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("restaurant", for: UIControlState.normal)
                button2.setTitle ("mall", for: UIControlState.normal)
                button3.setTitle ("office building", for: UIControlState.normal)
                button4.setTitle ("department store", for:
                    UIControlState.normal)
                CorrectAnswer = "2"
                
                break
                
            case 7:
                QuestionLabel.text = "an organization where people and businesses can invest or borrow money, change it to foreign money, etc., or abuilding where these services are offered"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("bank", for: UIControlState.normal)
                button2.setTitle ("gas station", for: UIControlState.normal)
                button3.setTitle ("book store", for: UIControlState.normal)
                button4.setTitle ("school", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 8:
                QuestionLabel.text = "a large shop which sells most types of food and other goods needed in the home"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("airport", for: UIControlState.normal)
                button2.setTitle ("restaurant", for: UIControlState.normal)
                button3.setTitle ("supermarket", for: UIControlState.normal)
                button4.setTitle ("movie theater", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 9:
                QuestionLabel.text = "a large area of land with grass and trees, usually surrounded by fences or walls, and specially arranged so that people can walk in it for pleasure or children can play in it"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("park", for: UIControlState.normal)
                button2.setTitle ("forest", for: UIControlState.normal)
                button3.setTitle ("bowling alley", for: UIControlState.normal)
                button4.setTitle ("bus stop", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 10:
                QuestionLabel.text = "a place with one or more buildings and platforms where trains stop for people to get on or off"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("barber shop", for: UIControlState.normal)
                button2.setTitle ("gas station", for: UIControlState.normal)
                button3.setTitle ("convenience store", for: UIControlState.normal)
                button4.setTitle ("train station", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            default:
                break
            }
        }
        else if(titleTemp.text == "Clothes"){
            var RandomNumber = arc4random() % 10
            RandomNumber += 1
            switch (RandomNumber) {
                
            case 1:
                QuestionLabel.text = "one of a pair of coverings for your feet, usually made of a strong material such as leather, with a thick leather or plastic sole ( base) and usually a heel"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("raincoat", for: UIControlState.normal)
                button2.setTitle ("shoes", for: UIControlState.normal)
                button3.setTitle ("slippers", for: UIControlState.normal)
                button4.setTitle ("t-shirt", for: UIControlState.normal)
                CorrectAnswer = "2"
                
                break
            case 2:
                QuestionLabel.text = "a strip, square, or triangle of cloth, worn around the neck, head, or shoulders to keep you warm or to make you look attractive"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("scarf", for: UIControlState.normal)
                button2.setTitle ("hat", for: UIControlState.normal)
                button3.setTitle ("jacket", for: UIControlState.normal)
                button4.setTitle ("boots", for: UIControlState.normal)
                CorrectAnswer = "1"
                
                break
            case 3:
                QuestionLabel.text = "a piece of clothing, typically with long sleeves and made from wool, that is worn on the upper part of the body"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("slacks", for: UIControlState.normal)
                button2.setTitle ("gloves", for: UIControlState.normal)
                button3.setTitle ("undershirt", for: UIControlState.normal)
                button4.setTitle ("sweater", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
            case 4:
                QuestionLabel.text = "a simple piece of clothing, usually with short sleeves and no collar, that covers the top part of the body"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("belt", for: UIControlState.normal)
                button2.setTitle ("dress", for: UIControlState.normal)
                button3.setTitle ("T-shirt", for: UIControlState.normal)
                button4.setTitle ("suit", for: UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 5:
                QuestionLabel.text = "a type of shoe that covers the whole foot and the lower part of the leg"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("slippers", for: UIControlState.normal)
                button2.setTitle ("scarf", for: UIControlState.normal)
                button3.setTitle ("raincoat", for: UIControlState.normal)
                button4.setTitle ("boots", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 6:
                QuestionLabel.text = "a strip of leather or material worn around the waist to support clothes or for decoration"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("skirt", for: UIControlState.normal)
                button2.setTitle ("belt", for: UIControlState.normal)
                button3.setTitle ("pajamas", for: UIControlState.normal)
                button4.setTitle ("hat", for:
                    UIControlState.normal)
                CorrectAnswer = "2"
                
                break
                
            case 7:
                QuestionLabel.text = "trousers made of denim ( strong blue cotton cloth) that are worn informally"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("jeans", for: UIControlState.normal)
                button2.setTitle ("underclothes", for: UIControlState.normal)
                button3.setTitle ("trousers", for: UIControlState.normal)
                button4.setTitle ("slippers", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 8:
                QuestionLabel.text = "a jacket and trousers or a jacket and skirt that are made from the same material"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("jacket", for: UIControlState.normal)
                button2.setTitle ("raincoat", for: UIControlState.normal)
                button3.setTitle ("suit", for: UIControlState.normal)
                button4.setTitle ("hat", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 9:
                QuestionLabel.text = "a piece of clothing for women and girls that hangs from the waist and does not have legs"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("skirt", for: UIControlState.normal)
                button2.setTitle ("boots", for: UIControlState.normal)
                button3.setTitle ("scarf", for: UIControlState.normal)
                button4.setTitle ("sweater", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 10:
                QuestionLabel.text = "a piece of clothing for women or girls that covers the top half of the body and hangs down over the legs"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("gloves", for: UIControlState.normal)
                button2.setTitle ("shirt", for: UIControlState.normal)
                button3.setTitle ("trousers", for: UIControlState.normal)
                button4.setTitle ("dress", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            default:
                break
            }
        }
        else if(titleTemp.text == "Vehicles"){
            var RandomNumber = arc4random() % 10
            RandomNumber += 1
            switch (RandomNumber) {
                
            case 1:
                QuestionLabel.text = "a very large balloon that is filled with hot air or gas and can carry people in a basket (open container ) hanging under it"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("ambulance", for: UIControlState.normal)
                button2.setTitle ("balloon", for: UIControlState.normal)
                button3.setTitle ("jeep", for: UIControlState.normal)
                button4.setTitle ("minibus", for: UIControlState.normal)
                CorrectAnswer = "2"
                
                break
            case 2:
                QuestionLabel.text = "a vehicle with two wheels and an engine"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("motorcycle", for: UIControlState.normal)
                button2.setTitle ("car", for: UIControlState.normal)
                button3.setTitle ("scooter", for: UIControlState.normal)
                button4.setTitle ("tractor", for: UIControlState.normal)
                CorrectAnswer = "1"
                
                break
            case 3:
                QuestionLabel.text = "a large vehicle in which people are driven from one place to another"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("bicycle", for: UIControlState.normal)
                button2.setTitle ("sports car", for: UIControlState.normal)
                button3.setTitle ("taxi", for: UIControlState.normal)
                button4.setTitle ("bus", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
            case 4:
                QuestionLabel.text = "a car with a driver who you pay to take you somewhere"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("minibus", for: UIControlState.normal)
                button2.setTitle ("sidecar", for: UIControlState.normal)
                button3.setTitle ("taxi", for: UIControlState.normal)
                button4.setTitle ("scooter", for: UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 5:
                QuestionLabel.text = "a vehicle designed for air travel that has wings and one or more engines"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("airport", for: UIControlState.normal)
                button2.setTitle ("dump truck", for: UIControlState.normal)
                button3.setTitle ("bulldozer", for: UIControlState.normal)
                button4.setTitle ("airplane", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 6:
                QuestionLabel.text = "a large military fighting vehicle designed to protect those inside it from attack, driven by wheels that turn inside moving metal belts"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("bus", for: UIControlState.normal)
                button2.setTitle ("tank", for: UIControlState.normal)
                button3.setTitle ("bicycle", for: UIControlState.normal)
                button4.setTitle ("wrecker", for:
                    UIControlState.normal)
                CorrectAnswer = "2"
                
                break
                
            case 7:
                QuestionLabel.text = "a large boat for travelling on water, especially across the sea"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("ship", for: UIControlState.normal)
                button2.setTitle ("police car", for: UIControlState.normal)
                button3.setTitle ("concrete mixer", for: UIControlState.normal)
                button4.setTitle ("ambulance", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 8:
                QuestionLabel.text = "a child's vehicle with two or three small wheels joined to the bottom of a narrow board and a long vertical handle attached to the front wheel. It is ridden by standing with one foot on the board and pushing against the ground with the other foot"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("car", for: UIControlState.normal)
                button2.setTitle ("bus", for: UIControlState.normal)
                button3.setTitle ("scooter", for: UIControlState.normal)
                button4.setTitle ("jeep", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 9:
                QuestionLabel.text = "a large road vehicle that is used for transporting large amounts of goods"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("truck", for: UIControlState.normal)
                button2.setTitle ("bicycle", for: UIControlState.normal)
                button3.setTitle ("motorcycle", for: UIControlState.normal)
                button4.setTitle ("sidecar", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 10:
                QuestionLabel.text = "a two-wheeled vehicle that you sit on and move by turning the two pedals ( flat parts you press with your feet)"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("speed boat", for: UIControlState.normal)
                button2.setTitle ("road grader", for: UIControlState.normal)
                button3.setTitle ("tractor", for: UIControlState.normal)
                button4.setTitle ("bicycle", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            default:
                break
            }
        }
        else if(titleTemp.text == "Special"){
            var RandomNumber = arc4random() % 70
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
                button2.setTitle ("bread", for: UIControlState.normal)
                button3.setTitle ("cereal", for: UIControlState.normal)
                button4.setTitle ("pancake", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
            case 4:
                QuestionLabel.text = "a mixture of uncooked vegetables, usually including lettuce, eaten either as a separate dish or with other food"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("sandwich", for: UIControlState.normal)
                button2.setTitle ("bagel", for: UIControlState.normal)
                button3.setTitle ("salad", for: UIControlState.normal)
                button4.setTitle ("toast", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 5:
                QuestionLabel.text = "two pieces of bread with cheese, salad, or meat, usually cold, between them"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("meatball", for: UIControlState.normal)
                button2.setTitle ("noodles", for: UIControlState.normal)
                button3.setTitle ("rice", for: UIControlState.normal)
                button4.setTitle ("sandwich", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 6:
                QuestionLabel.text = "a thick, flat piece of meat or fish, especially meat from a cow"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("hamburger", for: UIControlState.normal)
                button2.setTitle ("steak", for: UIControlState.normal)
                button3.setTitle ("croissant", for: UIControlState.normal)
                button4.setTitle ("noodles", for:
                    UIControlState.normal)
                CorrectAnswer = "2"
                
                break
                
            case 7:
                QuestionLabel.text = "pasta made in the form of long, thin strings"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("spaghetti", for: UIControlState.normal)
                button2.setTitle ("rice", for: UIControlState.normal)
                button3.setTitle ("sausage", for: UIControlState.normal)
                button4.setTitle ("noodles", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 8:
                QuestionLabel.text = "a round, flat piece of minced beef, fried and usually eaten between two halves of a bread roll"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("sandwich", for: UIControlState.normal)
                button2.setTitle ("fish", for: UIControlState.normal)
                button3.setTitle ("hamburger", for: UIControlState.normal)
                button4.setTitle ("roll", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 9:
                QuestionLabel.text = "a thin, tube-like case containing meat that has been cut into very small pieces and mixed with spices"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("sausage", for: UIControlState.normal)
                button2.setTitle ("fish", for: UIControlState.normal)
                button3.setTitle ("egg", for: UIControlState.normal)
                button4.setTitle ("shrimp", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 10:
                QuestionLabel.text = "a usually hot, liquid food made from vegetables, meat, or fish"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("cheese", for: UIControlState.normal)
                button2.setTitle ("bagel", for: UIControlState.normal)
                button3.setTitle ("croissant", for: UIControlState.normal)
                button4.setTitle ("soup", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 11:
                QuestionLabel.text = "the small, round, dark red root of a plant, eaten cooked as a vegetable, especially cold in salads"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("pumpkin", for: UIControlState.normal)
                button2.setTitle ("beetroot", for: UIControlState.normal)
                button3.setTitle ("blackberry", for: UIControlState.normal)
                button4.setTitle ("lime", for: UIControlState.normal)
                CorrectAnswer = "2"
                
                break
            case 12:
                QuestionLabel.text = "a long pointed orange root eaten as a vegetable"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("carrot", for: UIControlState.normal)
                button2.setTitle ("radish", for: UIControlState.normal)
                button3.setTitle ("corn", for: UIControlState.normal)
                button4.setTitle ("banana", for: UIControlState.normal)
                CorrectAnswer = "1"
                
                break
            case 13:
                QuestionLabel.text = "plants, such as wheat, maize, oats, and barley, that can be used to produce flour"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("zucchini", for: UIControlState.normal)
                button2.setTitle ("banana", for: UIControlState.normal)
                button3.setTitle ("lettuce", for: UIControlState.normal)
                button4.setTitle ("corn", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
            case 14:
                QuestionLabel.text = "a round vegetable that grows underground and has white flesh with light brown, red, or pink skin, or the plant on which these grow"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("onion", for: UIControlState.normal)
                button2.setTitle ("avocado", for: UIControlState.normal)
                button3.setTitle ("potato", for: UIControlState.normal)
                button4.setTitle ("nectarine", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 15:
                QuestionLabel.text = "a round, red fruit with a lot of seeds, eaten cooked or uncooked as a vegetable, for example in salads or sauces"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("lettuce", for: UIControlState.normal)
                button2.setTitle ("spring onion", for: UIControlState.normal)
                button3.setTitle ("papaya", for: UIControlState.normal)
                button4.setTitle ("tomato", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 16:
                QuestionLabel.text = "a round fruit with firm, white flesh and a green, red, or yellow skin"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("orange", for: UIControlState.normal)
                button2.setTitle ("apple", for: UIControlState.normal)
                button3.setTitle ("watermelon", for: UIControlState.normal)
                button4.setTitle ("plum", for:
                    UIControlState.normal)
                CorrectAnswer = "2"
                
                break
                
            case 17:
                QuestionLabel.text = "a long, curved fruit with a yellow skin and soft, sweet, white flesh inside"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("banana", for: UIControlState.normal)
                button2.setTitle ("apricot", for: UIControlState.normal)
                button3.setTitle ("fig", for: UIControlState.normal)
                button4.setTitle ("lychee", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 18:
                QuestionLabel.text = "a small, round, purple or pale green fruit that you can eat or make into wine"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("apple", for: UIControlState.normal)
                button2.setTitle ("pineapple", for: UIControlState.normal)
                button3.setTitle ("grape", for: UIControlState.normal)
                button4.setTitle ("pomegranate", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 19:
                QuestionLabel.text = "an oval fruit with brown, hairy skin and green flesh"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("kiwi", for: UIControlState.normal)
                button2.setTitle ("blackcurrant", for: UIControlState.normal)
                button3.setTitle ("lemon", for: UIControlState.normal)
                button4.setTitle ("melon", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 20:
                QuestionLabel.text = "an oval tropical fruit with a smooth skin, orange-yellow flesh, and a large, hard seed in the middle"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("pea", for: UIControlState.normal)
                button2.setTitle ("boysenberry", for: UIControlState.normal)
                button3.setTitle ("pear", for: UIControlState.normal)
                button4.setTitle ("mango", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 21:
                QuestionLabel.text = "a common animal with four legs, especially kept by people as a pet or to hunt or guard things"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("fox", for: UIControlState.normal)
                button2.setTitle ("dog", for: UIControlState.normal)
                button3.setTitle ("cat", for: UIControlState.normal)
                button4.setTitle ("horse", for: UIControlState.normal)
                CorrectAnswer = "2"
                
                break
            case 22:
                QuestionLabel.text = "an animal that lives in water, is covered with scales, and breathes by taking water in through its mouth, or the flesh of these animals eaten as food"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("fish", for: UIControlState.normal)
                button2.setTitle ("chicken", for: UIControlState.normal)
                button3.setTitle ("frog", for: UIControlState.normal)
                button4.setTitle ("turtle", for: UIControlState.normal)
                CorrectAnswer = "1"
                
                break
            case 23:
                QuestionLabel.text = "an animal that lives in hot countries, has a long tail, and climbs trees."
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("rat", for: UIControlState.normal)
                button2.setTitle ("kangaroo", for: UIControlState.normal)
                button3.setTitle ("rabbit", for: UIControlState.normal)
                button4.setTitle ("monkey", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
            case 24:
                QuestionLabel.text = "a bird that lives by water and has webbed feet ( feet with skin between the toes), a short neck, and a large beak"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("bee", for: UIControlState.normal)
                button2.setTitle ("owl", for: UIControlState.normal)
                button3.setTitle ("duck", for: UIControlState.normal)
                button4.setTitle ("spider", for: UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 25:
                QuestionLabel.text = "a small animal that has smooth skin, lives in water and on land, has long powerful back legs with which it jumps from place to place, has no tail, and is usually greenish-brown in colour"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("camel", for: UIControlState.normal)
                button2.setTitle ("crocodile", for: UIControlState.normal)
                button3.setTitle ("dolphin", for: UIControlState.normal)
                button4.setTitle ("frog", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 26:
                QuestionLabel.text = "an African wild animal that looks like a horse, with black or brown and white lines on its body"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("giraffe", for: UIControlState.normal)
                button2.setTitle ("zebra", for: UIControlState.normal)
                button3.setTitle ("hippopotamus", for: UIControlState.normal)
                button4.setTitle ("scorpion", for:
                    UIControlState.normal)
                CorrectAnswer = "2"
                
                break
                
            case 27:
                QuestionLabel.text = "a large African animal with a very long neck and long legs"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("giraffe", for: UIControlState.normal)
                button2.setTitle ("eagle", for: UIControlState.normal)
                button3.setTitle ("chimpanzee", for: UIControlState.normal)
                button4.setTitle ("puppy", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 28:
                QuestionLabel.text = "a large wild animal of the cat family with yellowish-brown fur that lives in Africa and southern Asia"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("alligator", for: UIControlState.normal)
                button2.setTitle ("cheetah", for: UIControlState.normal)
                button3.setTitle ("lion", for: UIControlState.normal)
                button4.setTitle ("tiger", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 29:
                QuestionLabel.text = "a large fish that has sharp teeth and a pointed fin on its back"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("shark", for: UIControlState.normal)
                button2.setTitle ("dolphin", for: UIControlState.normal)
                button3.setTitle ("hippopotamus", for: UIControlState.normal)
                button4.setTitle ("panda", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 30:
                QuestionLabel.text = "a large pink, brown, or black farm animal with short legs and a curved tail, kept for its meat"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("ant", for: UIControlState.normal)
                button2.setTitle ("bear", for: UIControlState.normal)
                button3.setTitle ("deer", for: UIControlState.normal)
                button4.setTitle ("pig", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 31:
                QuestionLabel.text = "a large area of land covered with trees and plants, usually larger than a wood, or the trees and plants themselves"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("fox", for: UIControlState.normal)
                button2.setTitle ("forest", for: UIControlState.normal)
                button3.setTitle ("mountain", for: UIControlState.normal)
                button4.setTitle ("alga", for: UIControlState.normal)
                CorrectAnswer = "2"
                
                break
            case 32:
                QuestionLabel.text = "the part of a plant that is often brightly coloured and has a pleasant smell, or the type of plant that produces these"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("flower", for: UIControlState.normal)
                button2.setTitle ("alga", for: UIControlState.normal)
                button3.setTitle ("frog", for: UIControlState.normal)
                button4.setTitle ("waterfall", for: UIControlState.normal)
                CorrectAnswer = "1"
                
                break
            case 33:
                QuestionLabel.text = "a tall plant that has a wooden trunk and branches that grow from its upper part"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("river", for: UIControlState.normal)
                button2.setTitle ("kangaroo", for: UIControlState.normal)
                button3.setTitle ("volcano", for: UIControlState.normal)
                button4.setTitle ("tree", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
            case 34:
                QuestionLabel.text = "a raised part of the earth's surface, much larger than a hill, the top of which might be covered in snow"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("forest", for: UIControlState.normal)
                button2.setTitle ("owl", for: UIControlState.normal)
                button3.setTitle ("mountain", for: UIControlState.normal)
                button4.setTitle ("flower", for: UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 35:
                QuestionLabel.text = "a natural wide flow of fresh water across the land into the sea, a lake, or another river"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("forest", for: UIControlState.normal)
                button2.setTitle ("crocodile", for: UIControlState.normal)
                button3.setTitle ("dolphin", for: UIControlState.normal)
                button4.setTitle ("river", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 36:
                QuestionLabel.text = "water, especially from a river or stream, dropping from a higher to a lower point, sometimes from a great height"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("giraffe", for: UIControlState.normal)
                button2.setTitle ("waterfall", for: UIControlState.normal)
                button3.setTitle ("scorpion", for: UIControlState.normal)
                button4.setTitle ("river", for:
                    UIControlState.normal)
                CorrectAnswer = "2"
                
                break
                
            case 37:
                QuestionLabel.text = "the area above the earth, in which clouds, the sun, etc. can be seen"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("sky", for: UIControlState.normal)
                button2.setTitle ("eagle", for: UIControlState.normal)
                button3.setTitle ("flower", for: UIControlState.normal)
                button4.setTitle ("volcano", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 38:
                QuestionLabel.text = "a current of air moving approximately horizontally, especially one strong enough to be felt"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("rain", for: UIControlState.normal)
                button2.setTitle ("cheetah", for: UIControlState.normal)
                button3.setTitle ("wind", for: UIControlState.normal)
                button4.setTitle ("snow", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 39:
                QuestionLabel.text = "a mountain with a large, circular hole at the top through which lava (hot liquid rock) gases, steam, and dust are or have been forced out"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("volcano", for: UIControlState.normal)
                button2.setTitle ("forest", for: UIControlState.normal)
                button3.setTitle ("tree", for: UIControlState.normal)
                button4.setTitle ("sky", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 40:
                QuestionLabel.text = "the small, soft, white pieces of ice that sometimes fall from the sky when it is cold, or the white layer on the ground and other surfaces that it forms"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("sun", for: UIControlState.normal)
                button2.setTitle ("sky", for: UIControlState.normal)
                button3.setTitle ("deer", for: UIControlState.normal)
                button4.setTitle ("snow", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 41:
                QuestionLabel.text = "a place where aircraft regularly take off and land, with buildings for passengers to wait in"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("hospital", for: UIControlState.normal)
                button2.setTitle ("airport", for: UIControlState.normal)
                button3.setTitle ("supermarket", for: UIControlState.normal)
                button4.setTitle ("church", for: UIControlState.normal)
                CorrectAnswer = "2"
                
                break
            case 42:
                QuestionLabel.text = "a place where people who are ill or injured are treated and taken care of by doctors and nurses"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("hospital", for: UIControlState.normal)
                button2.setTitle ("museum", for: UIControlState.normal)
                button3.setTitle ("post office", for: UIControlState.normal)
                button4.setTitle ("bus stop", for: UIControlState.normal)
                CorrectAnswer = "1"
                
                break
            case 43:
                QuestionLabel.text = "a place where meals are prepared and served to customers"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("supermarket", for: UIControlState.normal)
                button2.setTitle ("barber shop", for: UIControlState.normal)
                button3.setTitle ("bowling alley", for: UIControlState.normal)
                button4.setTitle ("restaurant", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
            case 44:
                QuestionLabel.text = "a building where objects of historical, scientific, or artistic interest are kept"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("fire department", for: UIControlState.normal)
                button2.setTitle ("library", for: UIControlState.normal)
                button3.setTitle ("museum", for: UIControlState.normal)
                button4.setTitle ("movie theater", for: UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 45:
                QuestionLabel.text = "a place where children go to be educated"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("apartment building", for: UIControlState.normal)
                button2.setTitle ("bank", for: UIControlState.normal)
                button3.setTitle ("mall", for: UIControlState.normal)
                button4.setTitle ("school", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 46:
                QuestionLabel.text = "a large, usually covered, shopping area where cars are not allowed"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("restaurant", for: UIControlState.normal)
                button2.setTitle ("mall", for: UIControlState.normal)
                button3.setTitle ("office building", for: UIControlState.normal)
                button4.setTitle ("department store", for:
                    UIControlState.normal)
                CorrectAnswer = "2"
                
                break
                
            case 47:
                QuestionLabel.text = "an organization where people and businesses can invest or borrow money, change it to foreign money, etc., or abuilding where these services are offered"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("bank", for: UIControlState.normal)
                button2.setTitle ("gas station", for: UIControlState.normal)
                button3.setTitle ("book store", for: UIControlState.normal)
                button4.setTitle ("school", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 48:
                QuestionLabel.text = "a large shop which sells most types of food and other goods needed in the home"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("airport", for: UIControlState.normal)
                button2.setTitle ("restaurant", for: UIControlState.normal)
                button3.setTitle ("supermarket", for: UIControlState.normal)
                button4.setTitle ("movie theater", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 49:
                QuestionLabel.text = "a large area of land with grass and trees, usually surrounded by fences or walls, and specially arranged so that people can walk in it for pleasure or children can play in it"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("park", for: UIControlState.normal)
                button2.setTitle ("forest", for: UIControlState.normal)
                button3.setTitle ("bowling alley", for: UIControlState.normal)
                button4.setTitle ("bus stop", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 50:
                QuestionLabel.text = "a place with one or more buildings and platforms where trains stop for people to get on or off"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("barber shop", for: UIControlState.normal)
                button2.setTitle ("gas station", for: UIControlState.normal)
                button3.setTitle ("convenience store", for: UIControlState.normal)
                button4.setTitle ("train station", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 51:
                QuestionLabel.text = "one of a pair of coverings for your feet, usually made of a strong material such as leather, with a thick leather or plastic sole ( base) and usually a heel"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("raincoat", for: UIControlState.normal)
                button2.setTitle ("shoes", for: UIControlState.normal)
                button3.setTitle ("slippers", for: UIControlState.normal)
                button4.setTitle ("t-shirt", for: UIControlState.normal)
                CorrectAnswer = "2"
                
                break
            case 52:
                QuestionLabel.text = "a strip, square, or triangle of cloth, worn around the neck, head, or shoulders to keep you warm or to make you look attractive"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("scarf", for: UIControlState.normal)
                button2.setTitle ("hat", for: UIControlState.normal)
                button3.setTitle ("jacket", for: UIControlState.normal)
                button4.setTitle ("boots", for: UIControlState.normal)
                CorrectAnswer = "1"
                
                break
            case 53:
                QuestionLabel.text = "a piece of clothing, typically with long sleeves and made from wool, that is worn on the upper part of the body"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("slacks", for: UIControlState.normal)
                button2.setTitle ("gloves", for: UIControlState.normal)
                button3.setTitle ("undershirt", for: UIControlState.normal)
                button4.setTitle ("sweater", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
            case 54:
                QuestionLabel.text = "a simple piece of clothing, usually with short sleeves and no collar, that covers the top part of the body"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("belt", for: UIControlState.normal)
                button2.setTitle ("dress", for: UIControlState.normal)
                button3.setTitle ("T-shirt", for: UIControlState.normal)
                button4.setTitle ("suit", for: UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 55:
                QuestionLabel.text = "a type of shoe that covers the whole foot and the lower part of the leg"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("slippers", for: UIControlState.normal)
                button2.setTitle ("scarf", for: UIControlState.normal)
                button3.setTitle ("raincoat", for: UIControlState.normal)
                button4.setTitle ("boots", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 56:
                QuestionLabel.text = "a strip of leather or material worn around the waist to support clothes or for decoration"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("skirt", for: UIControlState.normal)
                button2.setTitle ("belt", for: UIControlState.normal)
                button3.setTitle ("pajamas", for: UIControlState.normal)
                button4.setTitle ("hat", for:
                    UIControlState.normal)
                CorrectAnswer = "2"
                
                break
                
            case 57:
                QuestionLabel.text = "trousers made of denim ( strong blue cotton cloth) that are worn informally"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("jeans", for: UIControlState.normal)
                button2.setTitle ("underclothes", for: UIControlState.normal)
                button3.setTitle ("trousers", for: UIControlState.normal)
                button4.setTitle ("slippers", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 58:
                QuestionLabel.text = "a jacket and trousers or a jacket and skirt that are made from the same material"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("jacket", for: UIControlState.normal)
                button2.setTitle ("raincoat", for: UIControlState.normal)
                button3.setTitle ("suit", for: UIControlState.normal)
                button4.setTitle ("hat", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 59:
                QuestionLabel.text = "a piece of clothing for women and girls that hangs from the waist and does not have legs"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("skirt", for: UIControlState.normal)
                button2.setTitle ("boots", for: UIControlState.normal)
                button3.setTitle ("scarf", for: UIControlState.normal)
                button4.setTitle ("sweater", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 60:
                QuestionLabel.text = "a piece of clothing for women or girls that covers the top half of the body and hangs down over the legs"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("gloves", for: UIControlState.normal)
                button2.setTitle ("shirt", for: UIControlState.normal)
                button3.setTitle ("trousers", for: UIControlState.normal)
                button4.setTitle ("dress", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
                
            case 61:
                QuestionLabel.text = "a very large balloon that is filled with hot air or gas and can carry people in a basket (open container ) hanging under it"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("ambulance", for: UIControlState.normal)
                button2.setTitle ("balloon", for: UIControlState.normal)
                button3.setTitle ("jeep", for: UIControlState.normal)
                button4.setTitle ("minibus", for: UIControlState.normal)
                CorrectAnswer = "2"
                
                break
            case 62:
                QuestionLabel.text = "a vehicle with two wheels and an engine"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("motorcycle", for: UIControlState.normal)
                button2.setTitle ("car", for: UIControlState.normal)
                button3.setTitle ("scooter", for: UIControlState.normal)
                button4.setTitle ("tractor", for: UIControlState.normal)
                CorrectAnswer = "1"
                
                break
            case 63:
                QuestionLabel.text = "a large vehicle in which people are driven from one place to another"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("bicycle", for: UIControlState.normal)
                button2.setTitle ("sports car", for: UIControlState.normal)
                button3.setTitle ("taxi", for: UIControlState.normal)
                button4.setTitle ("bus", for: UIControlState.normal)
                CorrectAnswer = "4"
                
                break
            case 64:
                QuestionLabel.text = "a car with a driver who you pay to take you somewhere"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("minibus", for: UIControlState.normal)
                button2.setTitle ("sidecar", for: UIControlState.normal)
                button3.setTitle ("taxi", for: UIControlState.normal)
                button4.setTitle ("scooter", for: UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 65:
                QuestionLabel.text = "a vehicle designed for air travel that has wings and one or more engines"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("airport", for: UIControlState.normal)
                button2.setTitle ("dump truck", for: UIControlState.normal)
                button3.setTitle ("bulldozer", for: UIControlState.normal)
                button4.setTitle ("airplane", for:
                    UIControlState.normal)
                CorrectAnswer = "4"
                
                break
                
            case 66:
                QuestionLabel.text = "a large military fighting vehicle designed to protect those inside it from attack, driven by wheels that turn inside moving metal belts"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("bus", for: UIControlState.normal)
                button2.setTitle ("tank", for: UIControlState.normal)
                button3.setTitle ("bicycle", for: UIControlState.normal)
                button4.setTitle ("wrecker", for:
                    UIControlState.normal)
                CorrectAnswer = "2"
                
                break
                
            case 67:
                QuestionLabel.text = "a large boat for travelling on water, especially across the sea"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("ship", for: UIControlState.normal)
                button2.setTitle ("police car", for: UIControlState.normal)
                button3.setTitle ("concrete mixer", for: UIControlState.normal)
                button4.setTitle ("ambulance", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 68:
                QuestionLabel.text = "a child's vehicle with two or three small wheels joined to the bottom of a narrow board and a long vertical handle attached to the front wheel. It is ridden by standing with one foot on the board and pushing against the ground with the other foot"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("car", for: UIControlState.normal)
                button2.setTitle ("bus", for: UIControlState.normal)
                button3.setTitle ("scooter", for: UIControlState.normal)
                button4.setTitle ("jeep", for:
                    UIControlState.normal)
                CorrectAnswer = "3"
                
                break
                
            case 69:
                QuestionLabel.text = "a large road vehicle that is used for transporting large amounts of goods"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("truck", for: UIControlState.normal)
                button2.setTitle ("bicycle", for: UIControlState.normal)
                button3.setTitle ("motorcycle", for: UIControlState.normal)
                button4.setTitle ("sidecar", for:
                    UIControlState.normal)
                CorrectAnswer = "1"
                
                break
                
            case 70:
                QuestionLabel.text = "a two-wheeled vehicle that you sit on and move by turning the two pedals ( flat parts you press with your feet)"
                QuestionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                QuestionLabel.numberOfLines = 5
                button1.setTitle ("speed boat", for: UIControlState.normal)
                button2.setTitle ("road grader", for: UIControlState.normal)
                button3.setTitle ("tractor", for: UIControlState.normal)
                button4.setTitle ("bicycle", for:
                    UIControlState.normal)
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
        lbBack3.isHidden = true
    }
    
    func UnHide () {
        LabelEnd.isHidden = false
        imgShake.isHidden = false
        lbshake.isHidden = false
        scorelabel.isHidden = true
        scoreText.isHidden = true
        numItem.isHidden = false
        lbBack3.isHidden = false
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
        
        //Background
        GifView.loadGif(name: "BG")
        
        //RandomQuiz()
        titleTemp.text = tempdata.title
        
        //Custom Label
        QuestionLabel.backgroundColor = UIColor.white
        QuestionLabel.layer.cornerRadius = 8
        QuestionLabel.layer.masksToBounds = true
        lbBack3.backgroundColor = UIColor.white
        lbBack3.layer.cornerRadius = 8
        lbBack3.layer.masksToBounds = true
        
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
        
        i += 1
        print(i)
        
        if(i == 10){
            let myView = storyboard?.instantiateViewController(withIdentifier: "scoreFacebook") as! scoreFacebookViewController
            let myScore = score.description
            myView.tempscore = myScore
            myView.temptitle = tempdata.title
            myView.name3 = tempName
            self.present(myView, animated: true, completion: nil)
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

