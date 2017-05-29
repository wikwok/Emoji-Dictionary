//
//  DefnitionViewController.swift
//  Emoji Dictionary
//
//  Created by Salih Alborno on 29/05/2017.
//  Copyright © 2017 iinsport. All rights reserved.
//

import UIKit

class DefnitionViewController: UIViewController {

    @IBOutlet weak var emojLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    var emoji = "No Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojLabel.text = emoji
        
        if emoji == "🎃" {
            definitionLabel.text = "A scary Haolloween"
        }
        //print(emoji)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
