//
//  FirstViewController.swift
//  gt-hw-3
//
//  Created by ake11a on 2022-10-06.
//

import UIKit

class FirstViewController: UIViewController {

    @IBAction func rightButton(_ sender: Any) {
        
        let secondViewController = storyboard!.instantiateViewController(withIdentifier: "second_vc") as! SecondViewController
        
        navigationController?.pushViewController(secondViewController, animated: false)
    }
    
    @IBAction func downButton(_ sender: Any) {
        
        let fourthViewController = storyboard!.instantiateViewController(withIdentifier: "fourth_vc") as! FourthViewController
        
        navigationController?.pushViewController(fourthViewController, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let rootViewController = storyboard!.instantiateViewController(withIdentifier: "root_vc") as! ViewController
        
        rootViewController.counter += 1
        if rootViewController.counter == rootViewController.attemptsNumber {
            
            rootViewController.isLoose = true
            
            navigationController?.popToRootViewController(animated: false)
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
