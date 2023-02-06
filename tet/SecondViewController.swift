//
//  SecondViewController.swift
//  tet
//
//  Created by Tayden White on 2/5/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    let total = 11
    var count0: Int = 0
    
    let insults = ["This seems statistically impossible Mr. Miller, but somehow you managed!", "The class feels empty today... Oh no! The Tech Department got to them!", "Pretty decent numbers you got there Mr. Miller, enough for an Overwatch team and then some!", "Exellent attendence! Now lets calculate the percentage of students paying attention."]

    @IBOutlet weak var percent: UILabel!
    @IBOutlet weak var insult: UILabel!
    @IBOutlet weak var meme: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let perc = Float(count0) / Float(total) * 100
        let percentText = String(format: "%.0f", perc) + "%"
        percent.text = percentText
        insult.text = insults[count0/3]
        meme.image = [#imageLiteral(resourceName: "meme5"), #imageLiteral(resourceName: "meme1-1"), #imageLiteral(resourceName: "meme3"), #imageLiteral(resourceName: "meme2"), #imageLiteral(resourceName: "meem4")][Int.random(in: 0...4)]
    }
}
