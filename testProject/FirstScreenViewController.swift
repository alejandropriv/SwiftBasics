//
//  ViewController.swift
//  testProject
//
//  Created by Alejandro Prieto on 25.04.20.
//  Copyright © 2020 Alejandro Prieto. All rights reserved.
//

import Foundation
import UIKit

struct Person {
    var name: String
    var age: Int
}

class FirstScreenViewController: UIViewController {

    @IBOutlet var personAfterLb: UILabel!
    @IBOutlet var personBeforeLb: UILabel!
    @IBOutlet var changeNameBtn: UIButton!
    @IBOutlet var newNameTxt: UITextField!
    

    
    var person: Person? {
        didSet{

            print("Called after setting the new value")
            if let name = person?.name {
                let data = "New name is \(name) and old name is \( oldValue?.name ?? "")"
                personAfterLb.text = data
            }
        }
        willSet(myNewValue) {

            print("Called before setting the new value")


            let data = "New name is \(myNewValue?.name ?? "noname")"
                personBeforeLb.text = data
        }
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        person = Person(name: "Alejandro", age: 33)
        
        
    }
    
    @IBAction func tapChangeName(_ sender: UIButton, forEvent event: UIEvent) {
        
        if let newName = newNameTxt.text{
            person = Person(name: newName, age: 33)
        }
    }
    
    @IBAction func unwindToVC1(segue:UIStoryboardSegue) { }

}

