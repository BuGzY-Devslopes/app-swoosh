//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Vlado Velkovski on 11/12/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextButtonActon(_ sender: BorderButton) {
//        let skillVC = SkillVC()
//        present(skillVC, animated: true, completion: nil)
        performSegue(withIdentifier: "toSkillVC", sender: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    deinit {
        print("LeagueVC deintialized ...")
    }

}
