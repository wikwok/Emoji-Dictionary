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
    var emoji = Emoji()
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    
    override func viewDidLoad() {
      
        super.viewDidLoad()
        emojLabel.text = emoji.stringEmoji
        definitionLabel.text = emoji.definition
        categoryLabel.text = "Category: \(emoji.category)"
        birthYearLabel.text = "BirthYear: \(emoji.birthYear)"
        
        /*
        if emoji == "🎃" {
            definitionLabel.text = "A scary Haolloween"
            categoryLabel.text = "Category: Ocasion"
            birthYearLabel.text = "BirthYear: 2011"
        }*/
        
        //print(emoji)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
