//
//  ViewController.swift
//  Dicee
//
//  Created by Eugeniu Garaz on 8/2/22.
//

import UIKit

fileprivate let diceImageNameList = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewL: UIImageView!
    @IBOutlet weak var diceImageViewR: UIImageView!

    var leftDiceSelection   : Int = 0
    var rightDiceSelection  : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPress(_ sender: Any) {
        leftDiceSelection = Int.random(in: 0..<diceImageNameList.count)
        rightDiceSelection = Int.random(in: 0..<diceImageNameList.count)
        
        diceImageViewL.image = UIImage(named: diceImageNameList[leftDiceSelection])
        diceImageViewR.image = UIImage(named: diceImageNameList[rightDiceSelection])
    }
    
}

