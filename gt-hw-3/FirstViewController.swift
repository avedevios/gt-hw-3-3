//
//  FirstViewController.swift
//  gt-hw-3
//
//  Created by ake11a on 2022-10-06.
//

import UIKit

class FirstViewController: UIViewController {
   
    var isKeyObtained = false
    
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var downButton: UIButton!
    
    @IBOutlet weak var statusLabel: UILabel!
    

    @IBAction func rightButton(_ sender: Any) {
        
        let secondViewController = storyboard!.instantiateViewController(withIdentifier: "second_vc") as! SecondViewController
 
        secondViewController.isKeyObtained = isKeyObtained
        
        navigationController?.pushViewController(secondViewController, animated: false)
    }
    
    @IBAction func downButton(_ sender: Any) {
        
        let fourthViewController = storyboard!.instantiateViewController(withIdentifier: "fourth_vc") as! FourthViewController
        
        navigationController?.pushViewController(fourthViewController, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        counter += 1
        if counter == attemptsNumber {
            
            statusLabel.isHidden = false
            statusLabel.text = "You loose!"
            
            rightButton.isHidden = true
            downButton.isHidden = true
            
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
