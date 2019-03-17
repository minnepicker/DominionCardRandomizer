//
//  ViewController.swift
//  DominionCardRandomizer
//
//  Created by morse on 2/18/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayCardLabel: UILabel!
    @IBOutlet weak var drawCardButton: UIButton!
    @IBOutlet weak var attackSwitch: UISwitch!
    
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        categorizeCards(in: dominionDeck)
        displayCardLabel.text = "Cards will appear here.\n\n\n\n\n\n\n\n\n"
    }

    @IBAction func showCards(_ sender: Any) {
        /// 
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        drawCardButton.tintColor = randomColor
        
        displayCardLabel.text = determinePlayingCards()
        
        if attackSwitch.isOn { print("Attaaaack!")}
    }
}
