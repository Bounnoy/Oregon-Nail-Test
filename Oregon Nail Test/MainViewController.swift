//
//  MainViewController.swift
//  Oregon Nail Test
//
//  Created by Bounnoy Phanthavong on 7/9/17.
//  Copyright © 2017 Bounnoy Phanthavong. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Change title of next view to the button's title.
        let destinationViewController = segue.destination
        if let typeViewController = destinationViewController as? TypeViewController,
            let newTitle = segue.identifier {
            typeViewController.pageTitle = newTitle.capitalized
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
