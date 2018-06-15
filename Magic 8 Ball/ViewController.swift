//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Juri Plugatariov on 15/06/2018.
//  Copyright © 2018 Juri Plugatariov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballElement: UIImageView!
    
    let ballStates = getBallStates()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        renderRandomBall()
    }

    @IBAction func ask(_ sender: UIButton) {
        renderRandomBall()
    }
    
    private static func getBallStates() -> [String] {
        return Array(1...5).map { element in "ball\(element)" }
    }
    
    private func renderRandomBall() {
        let imageName = ballStates[Int.random(in: 1 ..< 5)]
        ballElement.image = UIImage(named: imageName)
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        renderRandomBall()
    }
    
}

