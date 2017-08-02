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
        
        // Check to see if user already selected an answer.
        if appMode.mode != QA.Mode.study && !userAnsweredAlready {
            userAnsweredAlready = true
            checkAnswer(aButton.currentTitle!,from: aButton)
        }
    }
    
    @IBAction func bButtonPressed(_ sender: UIButton) {
        
        // Check to see if user already selected an answer.
        if appMode.mode != QA.Mode.study && !userAnsweredAlready {
            userAnsweredAlready = true
            checkAnswer(bButton.currentTitle!,from: bButton)
        }
    }
    
    @IBAction func cButtonPressed(_ sender: UIButton) {
        
        // Check to see if user already selected an answer.
        if appMode.mode != QA.Mode.study && !userAnsweredAlready {
            userAnsweredAlready = true
            checkAnswer(cButton.currentTitle!,from: cButton)
        }
    }
    
    @IBAction func dButtonPressed(_ sender: UIButton) {
        
        // Check to see if user already selected an answer.
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

                
            // If answer is wrong, execute below.
            } else {
                
                wrongAnswers += 1
                sender.setTitleColor(UIColor.red, for: UIControlState(rawValue: 0))
                
                // Highlight the correct answer.
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

            }
        
        // If there are more questions, make next button available.
        if counter < totalQuestions {
            nextButton?.isHidden = false
        }
    }
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!

    @IBAction func backButtonPressed(_ sender: UIButton) {
        counter -= 1
        
        // If can't go back further, hide back button.
        if counter < 1 {
            backButton?.isHidden = true
        }
        
        // Otherwise, show back button.
        if counter < totalQuestions {
            nextButton?.isHidden = false
        }
        
        // Marker to indicate we're going back.
        if appMode.mode == QA.Mode.practice {
            previousQuestion = 1
        }
        
        // Load previous question.
        userAnsweredAlready = false
        resetColors()
        start()
    }
    
    @IBAction func exitButtonPressed(_ sender: UIButton) {
        
        // If we're testing, show the results of the test.
        if appMode.mode == QA.Mode.test {
            let alertController = UIAlertController(title: "Test Results", message: "Right Answers = \(rightAnswers)\nWrong Answers = \(wrongAnswers)", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "Exit", style: .default, handler: { action in self.performSegue(withIdentifier: "exit", sender: self)})
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        counter += 1
        
        // Show the next button.
        if counter > 0 {
            backButton?.isHidden = false
        }
        
        // Hide the next button if we're at the end of the list.
        if counter >= totalQuestions {
            nextButton?.isHidden = true
        }
        
        // Load next question in the test.
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
    
    // Reveal all buttons and labels according to app mode.
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

    // This loads all the Oregon Law questions and choices.
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
            
            // Display the correct answer.
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
            
            // If back button was pressed, remove the last entry and reset flag.
            if previousQuestion > 0 {
                previousQuestion = 0
                practiceQuestions.removeLast()
            
            // Otherwise, pick a random question.
            } else {
                practiceQuestions.append(Int(arc4random() % UInt32(totalQuestions)))
            }
            
            // Store the correct answer since it's being randomized.
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
            
            
            // Randomize the multiple choices.
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
            
            // Pick a random question and store it so we don't pick it again.
            var index: Int
            repeat {
                index = Int(arc4random() % 100)
            } while alreadyUsedQuestions.contains(index)
            alreadyUsedQuestions.append(index)
            
            // Store the correct answer since it's being randomized.
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
            
            totalQuestions = 100 // Oregon Law Test is only 100 questions, even though there's more.
            question?.text = "Q\(counter+1)) \(current.q)" // Add number in front of the question.
            
            // Randomize the multiple choice.
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
        
        // Show all buttons and labels when data has been loaded.
        question?.isHidden = false
        aButton?.isHidden = false
        bButton?.isHidden = false
        cButton?.isHidden = false
        dButton?.isHidden = false
    }
    
    // This loads all the Oregon Nail Technology questions and answers.
    private func beginNail() {
        // Still need to write this one.
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
    }

}
