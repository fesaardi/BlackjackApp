//
//  ViewController.swift
//  BlackjackApp
//
//  Created by Fesa Ardi on 06/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCard: UIImageView!
    @IBOutlet weak var rightCard: UIImageView!
    
    var leftCardNumber = 0
    var rightCardNumber = 0
    let allCards = [#imageLiteral(resourceName: "1024px-2S.svg"), #imageLiteral(resourceName: "1024px-3S.svg"), #imageLiteral(resourceName: "1024px-4S.svg"), #imageLiteral(resourceName: "1024px-5S.svg"), #imageLiteral(resourceName: "1024px-6S.svg"), #imageLiteral(resourceName: "1024px-7S.svg"),  #imageLiteral(resourceName: "1024px-8S.svg"), #imageLiteral(resourceName: "1024px-9S.svg"), #imageLiteral(resourceName: "1024px-10S.svg"), #imageLiteral(resourceName: "1024px-JS.svg"), #imageLiteral(resourceName: "1024px-QS.svg"), #imageLiteral(resourceName: "1024px-KS.svg"), #imageLiteral(resourceName: "1024px-AS.svg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hitButton(_ sender: Any) {
        leftCardNumber = Int.random(in: 0...12)
        rightCardNumber = Int.random(in: 0...12)
        
        
        leftCard.image = allCards[leftCardNumber]
        rightCard.image = allCards[rightCardNumber]
        
        if leftCardNumber > 8 && leftCardNumber < 12 {
            leftCardNumber = 8
        }else if leftCardNumber == 12 {
            leftCardNumber = 9
        }
        
        if rightCardNumber > 8 && rightCardNumber < 12 {
            rightCardNumber = 8
        }else if rightCardNumber == 12 {
            rightCardNumber = 9
        }
        
        if (rightCardNumber + 2) + (leftCardNumber + 2) == 21 {
            print("Blackjack")
        }
        print(leftCardNumber+2, "+", rightCardNumber+2)
    }
    
}

