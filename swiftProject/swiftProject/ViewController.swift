//
//  ViewController.swift
//  swiftProject
//
//  Created by mac07 on 6/27/23.
//

import UIKit

class ViewController: UIViewController {
    
    enum Turn {
        case Circle
        case Cross
    }

    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var row1A: UIButton!
    @IBOutlet weak var row2A: UIButton!
    @IBOutlet weak var row3A: UIButton!
    @IBOutlet weak var row1B: UIButton!
    @IBOutlet weak var row2B: UIButton!
    @IBOutlet weak var row3B: UIButton!
    @IBOutlet weak var row1C: UIButton!
    @IBOutlet weak var row2C: UIButton!
    @IBOutlet weak var row3C: UIButton!
    
    //Declared Variables
    var firstTurn = Turn.Circle
    var currentTurn = Turn.Circle
    var board = [UIButton]()
    var circleScore = 0
    var crossScore = 0
    
    //Declared Constants
    var CIRCLE = "O"
    var CROSS = "X"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initBoard()
    }
    
    func initBoard() {
        board.append(row1A)
        board.append(row2A)
        board.append(row3A)
        board.append(row1B)
        board.append(row2B)
        board.append(row3B)
        board.append(row1C)
        board.append(row2C)
        board.append(row3C)
    }
    
    func fullBoard() -> Bool {
        for button in board {
            if button.title(for: .normal) == nil {
                return false
            }
        }
        return true
    }
    
    func resultAlert(title: String) {
        
        let message = "\n Cross \(String(crossScore)) \n Circle \(String(circleScore))"
        let ac = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        ac.addAction(UIAlertAction(title: "Reset", style: .default) { (_) in
            self.resetBoard()
        })
        
        self.present(ac, animated: true)
    }
    
    func resetBoard() {
        for button in board {
            button.setTitle(nil, for: .normal)
            button.isEnabled = true
        }
        
        if(firstTurn == Turn.Circle) {
            firstTurn = Turn.Cross
            turnLabel.text = CROSS
        } else if (firstTurn == Turn.Cross) {
            firstTurn = Turn.Circle
            turnLabel.text = CIRCLE
        }
        
        currentTurn = firstTurn
    }
    
    
    //Allow user to tap on grid
    @IBAction func boardAction(_ sender: UIButton) {
        addToBoard(sender)
        if(fullBoard()) {
            resultAlert(title: "Draw")
        }
        
        if(checkForVictory(CROSS)) {
            crossScore += 1
            resultAlert(title: "Player \(CROSS) Wins!")
        } else if(checkForVictory(CIRCLE)) {
            circleScore += 1
            resultAlert(title: "Player \(CIRCLE) Wins!")
        }
    }
    
    func checkForVictory(_ s: String) -> Bool {
        
        //Win by Horizontal
        if thisSymbol(row1A, s) && thisSymbol(row2A, s) && thisSymbol(row3A, s) {
            return true
        }
        if thisSymbol(row1B, s) && thisSymbol(row2B, s) && thisSymbol(row3B, s) {
            return true
        }
        if thisSymbol(row1C, s) && thisSymbol(row2C, s) && thisSymbol(row3C, s) {
            return true
        }
        
        //Win by Vertical
        if thisSymbol(row1A, s) && thisSymbol(row1B, s) && thisSymbol(row1C, s) {
            return true
        }
        if thisSymbol(row2A, s) && thisSymbol(row2B, s) && thisSymbol(row2C, s) {
            return true
        }
        if thisSymbol(row3A, s) && thisSymbol(row3B, s) && thisSymbol(row3C, s) {
            return true
        }
        
        //Win by Diagnol
        if thisSymbol(row1A, s) && thisSymbol(row2B, s) && thisSymbol(row3C, s) {
            return true
        }
        if thisSymbol(row3A, s) && thisSymbol(row2B, s) && thisSymbol(row1C, s) {
            return true
        }
        
        
        return false
    }
    
    func thisSymbol(_ button: UIButton, _ symbol: String) -> Bool {
        return button.title(for: .normal) == symbol
    }
    
    //Adds input into the board to be displayed.
    func addToBoard(_ sender: UIButton) {
        if(sender.title(for: .normal) == nil)
        {
            if (currentTurn == Turn.Circle) {
                sender.setTitle(CIRCLE, for: .normal)
                currentTurn = Turn.Cross
                turnLabel.text = CROSS
            } else if (currentTurn == Turn.Cross) {
                sender.setTitle(CROSS, for: .normal)
                currentTurn = Turn.Circle
                turnLabel.text = CIRCLE
            }
        }
        sender.isEnabled = false
    }
    
}

