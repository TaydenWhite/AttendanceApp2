//
//  ViewController.swift
//  tet
//
//  Created by Tayden White on 2/5/23.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var b0: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b10: UIButton!
    @IBOutlet weak var calculate: UIButton!
    
    @IBOutlet weak var miller: UILabel!
    
    
    
    let greenColor = UIColor(red: 50.0/255.0, green: 205.0/255.0, blue: 50.0/255.0, alpha: 1.0)
    let blueColor = UIColor(red: 0.0/255.0, green: 122.0/255.0, blue: 255.0/255.0, alpha: 1.0)

    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        b4.configuration?.attributedTitle?.font = UIFont(name: "Helvetica", size: CGFloat(12))
        for b in [b8, b10]{
            b?.configuration?.attributedTitle?.font = UIFont(name: "Helvetica", size: CGFloat(13))
        }
        for b in [b1, b2, b6]{
            b?.configuration?.attributedTitle?.font = UIFont(name: "Helvetica", size: CGFloat(15))
        }
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        
        let buttonTag = [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10]

        
        if buttonTag[sender.tag]?.tintColor != greenColor{
            buttonTag[sender.tag]?.tintColor = greenColor
            count += 1
        }
        
        else{
            buttonTag[sender.tag]?.tintColor = blueColor
            count -= 1
        }
    }
    
    
    @IBAction func calculatePercent(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.count0 = count
        }
    }
    
    @IBAction func returnToFirst(segue: UIStoryboardSegue){
        count = 0
        for b in [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10] {
            b?.tintColor = blueColor
        }
    }

}

