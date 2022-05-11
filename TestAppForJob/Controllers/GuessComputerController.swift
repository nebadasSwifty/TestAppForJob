//
//  GuessComputerController.swift
//  TestAppForJob
//
//  Created by Кирилл on 03.05.2022.
//

import UIKit

class GuessComputerController: UIViewController {
    //MARK: - Variables
    @IBOutlet weak var attempsPlayerLabel: UILabel! {
        didSet {
            updateInfo()
        }
    }
    @IBOutlet weak var guessesPlayerNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hiddingKeyboardOnTapAnywhere()
    }
    
    //MARK: - Methods
    @IBAction func compareNumber(_ sender: UIButton) {
        guard Int(guessesPlayerNumber.text ?? "") != nil else { return showAlert("Введенное число некоректно")}
        if let number = Int(guessesPlayerNumber.text!) {
            if number < Guessing.sharing.guessedComputerNumber {
                Guessing.sharing.attempPlayer += 1
                showAlert("Загаданное число больше")
            } else if number > Guessing.sharing.guessedComputerNumber {
                Guessing.sharing.attempPlayer += 1
                showAlert("Загаданное число меньше")
            } else {
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ScoresController") as! ScoresController
                navigationController?.pushViewController(vc, animated: true)
            }
        }
        updateInfo()
    }
    private func updateInfo() {
        attempsPlayerLabel.text = "Попытка № \(Guessing.sharing.attempPlayer)"
    }
}
