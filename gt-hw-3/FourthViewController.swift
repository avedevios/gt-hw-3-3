//
//  FourthViewController.swift
//  gt-hw-3
//
//  Created by ake11a on 2022-10-06.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var upButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var keyLabel: UILabel!
    
    @IBAction func upButton(_ sender: Any) {
        
        let firstViewController = storyboard!.instantiateViewController(withIdentifier: "first_vc") as! FirstViewController
        
        firstViewController.isKeyObtained = true
        
        navigationController?.pushViewController(firstViewController, animated: false)
    }
    
    @IBAction func rightButton(_ sender: Any) {
        let thirdViewController = storyboard!.instantiateViewController(withIdentifier: "third_vc") as! ThirdViewController
        
        thirdViewController.isKeyObtained = true
        
        navigationController?.pushViewController(thirdViewController, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter += 1
        if counter == attemptsNumber {
            
            keyLabel.text = "You loose!"
            
            upButton.isHidden = true
            rightButton.isHidden = true
            
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
