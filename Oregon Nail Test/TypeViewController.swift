//
//  TypeViewController.swift
//  Oregon Nail Test
//
//  Created by Bounnoy Phanthavong on 7/9/17.
//  Copyright © 2017 Bounnoy Phanthavong. All rights reserved.
//

import UIKit

class TypeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            updateUI()
        }
    }
    
    var pageTitle: String = " " {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
        titleLabel?.text = pageTitle
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination
        if let qaViewController = destinationViewController as? QAViewController,
            let newTitle = segue.identifier {
            qaViewController.pageTitle = "\(pageTitle): \(newTitle.capitalized)"
            
            let index = pageTitle.lowercased() + newTitle
            if let appMode = qa[index] {
                qaViewController.appMode = appMode
            }
        }
    }
    
    private let qa: Dictionary<String,QA> = [
        "studylaw" : QA(mode: .study, type: .law),
        "studynail" :  QA(mode: .study, type: .nail),
        "practicelaw" : QA(mode: .practice, type: .law),
        "practicenail" : QA(mode: .practice, type: .nail),
        "testlaw" : QA(mode: .test, type: .law),
        "testnail" : QA(mode: .test, type: .nail)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
