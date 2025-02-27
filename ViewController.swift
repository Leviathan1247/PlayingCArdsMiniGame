//
//  ViewController.swift
//  PlayingСards
//
//  Created by Левиафан on 2024-06-26.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var secondViewLabel: UILabel!
    
    var isFlipped = false
    var predictions = ["Уже через несколько месяцев ты будешь крепким джуном!",
                       "Завтра будет солнце!",
                       "Удача на твоей стороне"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        firstView.layer.cornerRadius = 10
        secondView.layer.cornerRadius = 10
    }

    @IBAction func transitionCard(_ sender: Any) {
        isFlipped.toggle()
        let firstCard = isFlipped ? firstView : secondView
        let secondCard = isFlipped ? secondView : firstView
        
        UIView.transition(from: firstCard!, to: secondCard!, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews]) { _ in
            let randomInt = Int.random(in: 0..<self.predictions.count)
            self.secondViewLabel.text = self.predictions[randomInt]}
    }
    
}

