//
//  GuessesComputer.swift
//  TestAppGuessing
//
//  Created by Кирилл on 02.05.2022.
//

import UIKit

class GuessesComputer: UIViewController {
    //MARK: - Variables
    @IBOutlet weak var guessingNumber: UILabel!
    @IBOutlet weak var attempsComputer: UILabel!
    @IBOutlet weak var comparsionLabel: UILabel!
    @IBOutlet weak var comparsionButton: UIButton! {
        didSet {
            comparsionButton.isEnabled = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateInfo()
    }
    //MARK: - Actions
    @IBAction func lessButtonPressed(_ sender: UIButton) {
        Guessing.sharing.maxValue = Guessing.sharing.binValue()
        Guessing.sharing.attempComputer += 1
        comparsionLabel.text = "Мое число меньше"
        updateInfo()
    }
    @IBAction func greaterButtonPressed(_ sender: UIButton) {
        Guessing.sharing.minValue = Guessing.sharing.binValue()
        Guessing.sharing.attempComputer += 1
        comparsionLabel.text = "Мое число больше"
        updateInfo()
    }
    
    private func updateInfo() {
        guessingNumber.text = "Твое число - \(Guessing.sharing.binValue())?"
        attempsComputer.text = "Попытка № \(Guessing.sharing.attempComputer)"
        if Guessing.sharing.guessingNumberPlayer == Guessing.sharing.binValue() {
            showAlert("Число угадано!")
            comparsionButton.isEnabled = true
        }
    }
}
