//
//  ThirdScreenViewController.swift
//  testProject
//
//  Created by Alejandro Prieto on 27.04.20.
//  Copyright © 2020 Alejandro Prieto. All rights reserved.
//

import Foundation
import UIKit

class ThirdScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


    @IBAction func dismiss(_ sender: Any) {
    
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func unWind(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToVC1", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! FirstScreenViewController
        
        destVC.person = Person(name: "devil",age: 33)
    }
}
