//
//  ViewController.swift
//  War
//
//  Created by Justin Chang on 1/14/17.
//  Copyright © 2017 Justin Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImage: UIImageView!
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var leftScore: UILabel!
    @IBOutlet weak var rightScore: UILabel!
    @IBOutlet weak var ResetL: UILabel!
    
    var rightHScore = 0;
    var leftHScore = 0;
    
    
    let cardnames = ["card2", "card3", "card4" ,"card5" , "card6", "card7", "card8" , "card9", "card10", "jack", "queen", "king","ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Reset(_ sender: UIButton) {
        leftImage.image=UIImage(named: "back")
        rightImage.image=UIImage(named: "back")
        ResetL.text=String("Andy is Trash")
        leftHScore=0;
        rightHScore=0;
        leftScore.text=String(leftHScore)
        rightScore.text=String(rightHScore)
        
    }
    @IBAction func dealTapped(_ sender: UIButton) {
        //print("Deal Tapped")
        //randomize from 0-8> 2-10 ->0-12
        if ResetL.text==String("Andy is Trash")
        {
            ResetL.text=String("Don't forget to reset if you need it")
        }
        let leftNum = Int(arc4random_uniform(13)) //use let b/c easier for const if not changing it, tho var should work as well.
        leftImage.image=UIImage(named: cardnames[leftNum])
        let rightNum = Int(arc4random_uniform(13))
        rightImage.image=UIImage(named: cardnames[rightNum])
        if leftNum > rightNum {
            //left win
            leftHScore+=1
            leftScore.text=String(leftHScore)
        }
        else if leftNum == rightNum {
            //tie
        }
        else {
            //right win
            rightHScore+=1
            rightScore.text=String(rightHScore)
            
        }
    }

}

