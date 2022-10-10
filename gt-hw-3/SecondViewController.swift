//
//  SecondViewController.swift
//  gt-hw-3
//
//  Created by ake11a on 2022-10-06.
//

import UIKit

class SecondViewController: UIViewController {
    
    var isKeyObtained = false
    
    //weak var delegate: MainViewControllerDelegate?
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var downButton: UIButton!
    
    @IBOutlet weak var treasureLabel: UILabel!
    
    @IBAction func leftButton(_ sender: Any) {
        
        let firstViewController = storyboard!.instantiateViewController(withIdentifier: "first_vc") as! FirstViewController
        
        navigationController?.pushViewController(firstViewController, animated: false)
        
    }
    
    @IBAction func downButton(_ sender: Any) {
        
        let thirdViewController = storyboard!.instantiateViewController(withIdentifier: "third_vc") as! ThirdViewController
        
        navigationController?.pushViewController(thirdViewController, animated: false)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if isKeyObtained {
            
            treasureLabel.text = "You win!"
            
            leftButton.isHidden = true
            downButton.isHidden = true
            
        } else {
            
            counter += 1
            if counter == attemptsNumber {
                
                treasureLabel.text = "You loose!"
                
                leftButton.isHidden = true
                downButton.isHidden = true
                
            } else {
                
                treasureLabel.text = "You have not a key, but do not give up!"
            }
            
        }
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
