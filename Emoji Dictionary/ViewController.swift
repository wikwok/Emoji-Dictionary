//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Salih Alborno on 29/05/2017.
//  Copyright © 2017 iinsport. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var xtable: UITableView!
    
    //var emojis = ["😄","😂","😡","😍","😱","🤡","😎","🎃"]
    
    var emojis :[Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        xtable.dataSource = self
        xtable.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) //emove higlighted emoji when come back
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefnitionViewController
        defVC.emoji = sender as! Emoji
        //print(sender)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face with sun glasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😀"
        emoji2.birthYear = 2010
        emoji2.category = "Smiley"
        emoji2.definition = "A smiley face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤡"
        emoji3.birthYear = 2010
        emoji3.category = "Smiley"
        emoji3.definition = "A smiley clown"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🎃"
        emoji4.birthYear = 2011
        emoji4.category = "Smiley"
        emoji4.definition = "A smiley pumkin"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "☹️"
        emoji5.birthYear = 2012
        emoji5.category = "Sad"
        emoji5.definition = "A sad face"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😡"
        emoji6.birthYear = 2012
        emoji6.category = "Sad"
        emoji6.definition = "An angry frowny"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji5, emoji6]
    }

}

