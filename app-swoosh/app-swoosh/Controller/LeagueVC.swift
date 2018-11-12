//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Vlado Velkovski on 11/12/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
//    var player = Player(desiredLeague: "",
//
//        ) {
//        didSet {
//            nextButton.isEnabled = true
//            print(player!.desiredLeague!)
//        }
//    }
    
    var player: Player! {
        didSet {
            nextButton.isEnabled = true
            print(player.desiredLeague!)
        }
    }
    

    @IBOutlet weak var nextButton: BorderButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.isEnabled = false

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onMensTapped(_ sender: BorderButton) {
        self.player = Player(desiredLeague: sender.titleLabel?.text, skillLevel: nil)
    }
    
    @IBAction func oNWomensTapped(_ sender: BorderButton) {
        self.player = Player(desiredLeague: sender.titleLabel?.text, skillLevel: nil)
    }
    
    @IBAction func onCoEdTapped(_ sender: BorderButton) {
        self.player = Player(desiredLeague: sender.titleLabel?.text, skillLevel: nil)
    }
    
    
    @IBAction func nextButtonActon(_ sender: BorderButton) {
//        let skillVC = SkillVC()
//        present(skillVC, animated: true, completion: nil)
        performSegue(withIdentifier: "toSkillVC", sender: self)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "toSkillVC" {
            if let skillVC = segue.destination as? SkillVC {
                skillVC.player = self.player
            }
        }
    }
    
    
    deinit {
        print("LeagueVC deintialized ...")
    }

}
