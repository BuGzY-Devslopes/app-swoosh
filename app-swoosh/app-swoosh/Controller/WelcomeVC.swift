//
//  ViewController.swift
//  app-swoosh
//
//  Created by Vlado Velkovski on 11/9/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    var player: Player! {
        didSet {
            if player == nil {
                print("No input data!")
            } else {
                print("First VC -> \n League: \(player.desiredLeague), Skill: \(player.skillLevel)")
            }

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func unwindFromSkillVC(segue: UIStoryboardSegue) {
        
    }


}

