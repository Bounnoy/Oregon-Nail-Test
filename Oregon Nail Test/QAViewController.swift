//
//  QAViewController.swift
//  Oregon Nail Test
//
//  Created by Bounnoy Phanthavong on 7/9/17.
//  Copyright © 2017 Bounnoy Phanthavong. All rights reserved.
//

import UIKit

class QAViewController: UIViewController {

    var appMode = QA(mode: .study, type: .law)
    private var counter = 0
    private var userAnsweredAlready = false
    private var totalQuestions = 0
    private var rightAnswers = 0
    private var wrongAnswers = 0
    private var correctAnswer = "A"
    private var previousQuestion = 0
    private var practiceQuestions = [Int]()
    private var alreadyUsedQuestions = [Int]()
    
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            updateUI()
        }
    }
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    
    @IBAction func aButtonPressed(_ sender: UIButton) {
        if appMode.mode != QA.Mode.study && !userAnsweredAlready {
            userAnsweredAlready = true
            checkAnswer(aButton.currentTitle!,from: aButton)
        }
    }
    
    @IBAction func bButtonPressed(_ sender: UIButton) {
        if appMode.mode != QA.Mode.study && !userAnsweredAlready {
            userAnsweredAlready = true
            checkAnswer(bButton.currentTitle!,from: bButton)
        }
    }
    
    @IBAction func cButtonPressed(_ sender: UIButton) {
        if appMode.mode != QA.Mode.study && !userAnsweredAlready {
            userAnsweredAlready = true
            checkAnswer(cButton.currentTitle!,from: cButton)
        }
    }
    
    @IBAction func dButtonPressed(_ sender: UIButton) {
        if appMode.mode != QA.Mode.study && !userAnsweredAlready {
            userAnsweredAlready = true
            checkAnswer(dButton.currentTitle!,from: dButton)
        }
    }
    
    private func checkAnswer(_ answer: String, from sender: UIButton) {

            // If answer is correct, execute below.
            if answer.contains(correctAnswer) {
                rightAnswers += 1
                
                sender.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                
                /*
                switch answer {
                case "A":
                    sender.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                case "B":
                    bButton?.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                case "C":
                    cButton?.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                case "D":
                    dButton?.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                default:
                    break
                }*/
                
            // If answer is wrong, execute below.
            } else {
                wrongAnswers += 1
                
                sender.setTitleColor(UIColor.red, for: UIControlState(rawValue: 0))
                
                if (aButton.currentTitle?.contains(correctAnswer))! {
                    aButton.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                }
                if (bButton.currentTitle?.contains(correctAnswer))! {
                    bButton.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                }
                if (cButton.currentTitle?.contains(correctAnswer))! {
                    cButton.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                }
                if (dButton.currentTitle?.contains(correctAnswer))! {
                    dButton.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                }
                /*
                switch correctAnswer {
                case aButton.currentTitle!:
                    aButton.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                case bButton.currentTitle!:
                    bButton.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                case cButton.currentTitle!:
                    cButton.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                case dButton.currentTitle!:
                    dButton.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                default:
                    break
                }*/
                /*
                switch answer {
                case "A":
                    aButton?.setTitleColor(UIColor.red, for: UIControlState(rawValue: 0))
                case "B":
                    bButton?.setTitleColor(UIColor.red, for: UIControlState(rawValue: 0))
                case "C":
                    cButton?.setTitleColor(UIColor.red, for: UIControlState(rawValue: 0))
                case "D":
                    dButton?.setTitleColor(UIColor.red, for: UIControlState(rawValue: 0))
                default:
                    break
                }
                
                switch correctAnswer {
                case "A":
                    aButton?.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                case "B":
                    bButton?.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                case "C":
                    cButton?.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                case "D":
                    dButton?.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
                default:
                    break
                }*/
            }
        
        if counter < totalQuestions {
            nextButton?.isHidden = false
        }
    }
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!

    @IBAction func backButtonPressed(_ sender: UIButton) {
        counter -= 1
        
        if counter < 1 {
            backButton?.isHidden = true
        }
        
        if counter < totalQuestions {
            nextButton?.isHidden = false
        }
        
        if appMode.mode == QA.Mode.practice {
            previousQuestion = 1
        }
        
        userAnsweredAlready = false
        resetColors()
        start()
    }
    
    @IBAction func exitButtonPressed(_ sender: UIButton) {
        
        if appMode.mode == QA.Mode.test {
            let alertController = UIAlertController(title: "Test Results", message: "Right Answers = \(rightAnswers)\nWrong Answers = \(wrongAnswers)", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "Exit", style: .default, handler: { action in self.performSegue(withIdentifier: "exit", sender: self)})
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        counter += 1
        
        if counter > 0 {
            backButton?.isHidden = false
        }
        
        if counter >= totalQuestions {
            nextButton?.isHidden = true
        }
        
        if appMode.mode == QA.Mode.test {
            updateUI()
        }
        
        userAnsweredAlready = false
        resetColors()
        start()
    }
   
    var pageTitle = " " {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI() {
        titleLabel?.text = pageTitle
        
        switch appMode.mode {
        case .study:
            backButton?.isHidden = true
            exitButton?.isHidden = false
            nextButton?.isHidden = false
        case .practice:
            backButton?.isHidden = true
            exitButton?.isHidden = false
            nextButton?.isHidden = false
        case .test:
            backButton?.isHidden = true
            exitButton?.isHidden = false
            nextButton?.isHidden = true
        }
    }
    
    private func resetColors() {
        aButton?.setTitleColor(UIColor.white, for: UIControlState(rawValue: 0))
        bButton?.setTitleColor(UIColor.white, for: UIControlState(rawValue: 0))
        cButton?.setTitleColor(UIColor.white, for: UIControlState(rawValue: 0))
        dButton?.setTitleColor(UIColor.white, for: UIControlState(rawValue: 0))
    }

    private func beginLaw() {

        switch appMode.mode {
        case .study:
            let current = appMode.law[counter]
            totalQuestions = appMode.law.count
            
            question?.text = "Q\(counter+1)) \(current.q)"
            
            aButton.setTitle("A) \(current.A)", for: UIControlState(rawValue: 0))
            bButton.setTitle("B) \(current.B)", for: UIControlState(rawValue: 0))
            cButton.setTitle("C) \(current.C)", for: UIControlState(rawValue: 0))
            dButton.setTitle("D) \(current.D)", for: UIControlState(rawValue: 0))
            
            switch current.a {
            case "A":
                aButton?.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
            case "B":
                bButton?.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
            case "C":
                cButton?.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
            case "D":
                dButton?.setTitleColor(UIColor.yellow, for: UIControlState(rawValue: 0))
            default:
                break
            }
        case .practice:
            totalQuestions = appMode.law.count
            if previousQuestion > 0 {
                previousQuestion = 0
                practiceQuestions.removeLast()
            } else {
                practiceQuestions.append(Int(arc4random() % UInt32(totalQuestions)))
            }
            
            let current = appMode.law[practiceQuestions.last!]
            let choice = [current.A,current.B,current.C,current.D]
            switch current.a {
            case "A":
                correctAnswer = choice[0]
            case "B":
                correctAnswer = choice[1]
            case "C":
                correctAnswer = choice[2]
            case "D":
                correctAnswer = choice[3]
            default:
                break
            }
            
            question?.text = "Q\(counter+1)) \(current.q)"
            
            var used = [Int]()
            var i: Int
            
            repeat {
                i = Int(arc4random() % 4)
            } while used.contains(i)
            used.append(i)
            aButton.setTitle("A) \(choice[i])", for: UIControlState(rawValue: 0))
            
            repeat {
                i = Int(arc4random() % 4)
            } while used.contains(i)
            used.append(i)
            bButton.setTitle("B) \(choice[i])", for: UIControlState(rawValue: 0))
            
            repeat {
                i = Int(arc4random() % 4)
            } while used.contains(i)
            used.append(i)
            cButton.setTitle("C) \(choice[i])", for: UIControlState(rawValue: 0))
            
            repeat {
                i = Int(arc4random() % 4)
            } while used.contains(i)
            used.append(i)
            dButton.setTitle("D) \(choice[i])", for: UIControlState(rawValue: 0))
            

        case .test:
            var index: Int
            repeat {
                index = Int(arc4random() % 100)
            } while alreadyUsedQuestions.contains(index)
            alreadyUsedQuestions.append(index)
            
            let current = appMode.law[index]
            let choice = [current.A,current.B,current.C,current.D]
            switch current.a {
            case "A":
                correctAnswer = choice[0]
            case "B":
                correctAnswer = choice[1]
            case "C":
                correctAnswer = choice[2]
            case "D":
                correctAnswer = choice[3]
            default:
                break
            }
            
            totalQuestions = 100
            question?.text = "Q\(counter+1)) \(current.q)"
            
            var used = [Int]()
            var i: Int
            
            repeat {
                i = Int(arc4random() % 4)
            } while used.contains(i)
            used.append(i)
            aButton.setTitle("A) \(choice[i])", for: UIControlState(rawValue: 0))
            
            repeat {
                i = Int(arc4random() % 4)
            } while used.contains(i)
            used.append(i)
            bButton.setTitle("B) \(choice[i])", for: UIControlState(rawValue: 0))
            
            repeat {
                i = Int(arc4random() % 4)
            } while used.contains(i)
            used.append(i)
            cButton.setTitle("C) \(choice[i])", for: UIControlState(rawValue: 0))
            
            repeat {
                i = Int(arc4random() % 4)
            } while used.contains(i)
            used.append(i)
            dButton.setTitle("D) \(choice[i])", for: UIControlState(rawValue: 0))
        }
        
        // Unhide questions and choices when data has been loaded.
        question?.isHidden = false
        aButton?.isHidden = false
        bButton?.isHidden = false
        cButton?.isHidden = false
        dButton?.isHidden = false
    }
    
    private func beginNail() {
        
    }
    
    private func start() {
        if appMode.type == .law {
            beginLaw()
        } else {
            //totalQuestions = appMode.nail.count
            beginNail()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
