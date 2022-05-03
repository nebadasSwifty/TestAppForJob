//
//  File.swift
//  TestAppGuessing
//
//  Created by Кирилл on 02.05.2022.
//

import Foundation
import UIKit


final class Guessing {
    
    //MARK: - Variables
    static let sharing = Guessing()
    
    var minValue = 0
    var maxValue = 100
    var guessedComputerNumber = Int.random(in: 0...100)
    var attempPlayer: Int = 1
    var attempComputer: Int = 1
    var guessingNumberPlayer: Int = 0
    
    //MARK: - Methods
    func defaultValue() {
        attempPlayer = 1
        attempComputer = 1
        guessingNumberPlayer = 0
        minValue = 0
        maxValue = 100
        guessedComputerNumber = Int.random(in: 0...100)
    }
    func binValue() -> Int {
        
        let s = maxValue - minValue
        let d = maxValue - s/2
        
        return d
    }
    func compareAttemps(_ sender: UILabel) {
        if attempPlayer == attempComputer {
            sender.text = "Ничья"
        } else if attempPlayer < attempComputer  {
            sender.text = "Ты выиграл"
        } else {
            sender.text = "Компьютер выиграл"
        }
    }
}
//MARK: - Extension
extension UIViewController {
    func hiddingKeyboardOnTapAnywhere() {
        let tapHideScreen = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboard))
        view.addGestureRecognizer(tapHideScreen)
    }
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}


