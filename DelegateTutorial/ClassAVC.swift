//
//  ClassAVC.swift
//  DelegateTutorial
//
//  Created by SENTHILKUMAR on 01/02/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

//MARK: step 4 adopt the protocol here
class ClassAVC: UIViewController,sampleDelegate {
    
    func changeBackground(color: UIColor) {
        
        self.view.backgroundColor = color
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    //MARK: step 5 create a reference of Class B and bind them through the prepareforsegue method
        
        if let nav = segue.destination as? UINavigationController, let classBVC = nav.topViewController as? ClassBVC {
            classBVC.delegate = self
        }    }
    
    //MARK: step 6 finally use the method of the contract here

    

}

