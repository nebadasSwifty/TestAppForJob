//
//  GuessesComputer.swift
//  TestAppGuessing
//
//  Created by Кирилл on 02.05.2022.
//

import UIKit

final class GuessesComputer: UIViewController {
    //MARK: - Variables
    @IBOutlet weak var guessingNumber: UILabel!
    @IBOutlet weak var attempsComputer: UILabel!
    @IBOutlet weak var comparsionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        comparsionButton.isEnabled = false
        updateInfo()
        hiddingKeyboardOnTapAnywhere()
        navigationController?.isNavigationBarHidden = true
    }
    //MARK: - Actions
    @IBAction func lessButtonPressed(_ sender: UIButton) {
        Guessing.sharing.maxValue = Guessing.sharing.binValue()
        Guessing.sharing.attempComputer += 1
        showAlert("Загаданное число меньше")
        updateInfo()
    }
    @IBAction func greaterButtonPressed(_ sender: UIButton) {
        Guessing.sharing.minValue = Guessing.sharing.binValue()
        Guessing.sharing.attempComputer += 1
        showAlert("Загаданное число больше")
        updateInfo()
    }
    private func showAlert(_ message: String) {
        let alert = UIAlertController(title: "Внимание", message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default)
        let cancelAlert = UIAlertAction(title: "Отмена", style: .cancel)
        alert.addAction(okAlert)
        alert.addAction(cancelAlert)
        present(alert, animated: true)
    }
    private func updateInfo() {
        guessingNumber.text = "Твое число - \(Guessing.sharing.binValue())?"
        attempsComputer.text = "Попытка № \(Guessing.sharing.attempComputer)"
        if Guessing.sharing.guessingNumberPlayer == Guessing.sharing.binValue() {
            comparsionButton.isEnabled = true
        }
    }
}
