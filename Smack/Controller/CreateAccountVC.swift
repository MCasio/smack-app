//
//  CreateAccountVC.swift
//  Smack
//
//  Created by mahmoud on 7/27/18.
//  Copyright © 2018 mahmoud. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
