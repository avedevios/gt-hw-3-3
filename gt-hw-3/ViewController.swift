//
//  ViewController.swift
//  gt-hw-3
//
//  Created by ake11a on 2022-10-06.
//

import UIKit

var isWin = false
var isLoose = false

var counter = 0
let attemptsNumber = 6

class ViewController: UIViewController {
    
    var isKeyObtained = false
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func startButton(_ sender: Any) {
        
        guard !isWin && !isLoose else {
            return
        }
        
        let randomNumber = Int.random(in: 1...4)
        
        switch randomNumber {
        case 1:
            let targetViewController = storyboard!.instantiateViewController(withIdentifier: "first_vc") as! FirstViewController
            
            navigationController?.pushViewController(targetViewController, animated: false)
        case 2:
            let targetViewController = storyboard!.instantiateViewController(withIdentifier: "second_vc") as! SecondViewController
            
            navigationController?.pushViewController(targetViewController, animated: false)
        case 3:
            let targetViewController = storyboard!.instantiateViewController(withIdentifier: "third_vc") as! ThirdViewController
            
            navigationController?.pushViewController(targetViewController, animated: false)
        case 4:
            let targetViewController = storyboard!.instantiateViewController(withIdentifier: "fourth_vc") as! FourthViewController
            
            navigationController?.pushViewController(targetViewController, animated: false)
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func statusRefresh() {
        
        //guard statusLabel != nil else {return}
        
        if isWin {
            statusLabel?.isHidden = false
            statusLabel?.textColor = UIColor.green
            statusLabel?.text = "You WIN"
        } else if isLoose {
            statusLabel?.isHidden = false
            statusLabel?.textColor = UIColor.red
            statusLabel/.text = "Game OVER"
        }
    }
}

