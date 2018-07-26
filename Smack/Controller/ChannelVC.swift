//
//  ChannelVC.swift
//  Smack
//
//  Created by mahmoud on 7/25/18.
//  Copyright © 2018 mahmoud. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
    }


}
