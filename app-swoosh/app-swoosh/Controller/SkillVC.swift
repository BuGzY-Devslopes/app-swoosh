//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Vlado Velkovski on 11/12/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    var player: Player! {
        didSet {
            print("League: \(String(describing: player.desiredLeague)), Skill: \(player.skillLevel)")
        }
    }
    
    @IBOutlet weak var finishButton: BorderButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        finishButton.isEnabled = false
        
        print(player.desiredLeague!)

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func beginnerButton(_ sender: BorderButton) {
        player.skillLevel = sender.titleLabel?.text
        enableFinishButton()
//        print("League: \(player.desiredLeague), Skill: \(player.skillLevel)")
    }
    
    
    @IBAction func ballerButton(_ sender: BorderButton) {
        player.skillLevel = sender.titleLabel?.text
        enableFinishButton()
//        print("League: \(player.desiredLeague), Skill: \(player.skillLevel)")
    }
    
    fileprivate func enableFinishButton() {
        finishButton.isEnabled = true
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let wellcomeVC = segue.destination as? WelcomeVC {
            wellcomeVC.player = self.player
        }
    }
    
    deinit {
        print("SkillVC deintialized ...")
    }

    

}
