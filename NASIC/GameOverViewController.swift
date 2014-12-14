//
//  GameOverViewController.swift
//  NASIC
//
//  Created by Matthias Urhahn on 14/12/14.
//  Copyright (c) 2014 M&M. All rights reserved.
//

import UIKit
import Foundation

class GameOverViewController: UIViewController{

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var doneButton: UIButton!

    var highscoreDB: HighscoreDB = HighscoreDB()
    var achievedScore: NSInteger = 0 // gets set by GameViewController

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onDoneClicked(sender: UIButton) {
        var name = nameField.text
        highscoreDB.addScore(name, points: achievedScore)
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let vc : HighscoreViewController = mainStoryboard.instantiateViewControllerWithIdentifier("Highscores") as HighscoreViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }

}