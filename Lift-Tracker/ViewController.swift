//
//  ViewController.swift
//  Lift-Tracker
//
//  Created by Joseph Barbati on 10/23/18.
//  Copyright © 2018 Joseph Barbati. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var getStartedButton: UIButton?
    
    @IBAction func showMainTabController(_ sender: UIButton)
    {
        performSegue(withIdentifier: "toMainTab", sender: sender)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // TODO: Bypass this view if stuff exists in DB
        if stuffExistsInDB() {
            performSegue(withIdentifier: "bypassInitial", sender: nil)
        }
    }
    
    private func stuffExistsInDB() -> Bool
    {
        return false
    }
}
