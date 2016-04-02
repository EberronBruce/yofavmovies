//
//  AddVC.swift
//  yofavmovies
//
//  Created by Bruce Burgess on 4/2/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import UIKit

class AddVC: UIViewController {
    @IBOutlet weak var cancelButton: Button!
    @IBOutlet weak var saveButton: Button!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cancelButton.roundButtonCorners()
        saveButton.roundButtonCorners()
    }

    @IBAction func cancelTapped(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
