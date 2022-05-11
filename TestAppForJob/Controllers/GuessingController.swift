//
//  GuessingController.swift
//  TestAppGuessing
//
//  Created by Кирилл on 02.05.2022.
//

import UIKit

class GuessingController: UIViewController {
    //MARK: - Variables
    @IBOutlet weak var enteringNumberTextField: UITextField!
    
    //MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        hiddingKeyboardOnTapAnywhere()
    }
    @IBAction func guessingButtonPressed(_ sender: UIButton) {
        guard Int(enteringNumberTextField.text ?? "") != nil else { return showAlert("Введенное число некоректно") }
        if let number = Int(enteringNumberTextField.text!) {
            if number >= 0 && number <= 100 {
                Guessing.sharing.guessingNumberPlayer = number
            } else {
                showAlert("Число не входит в требуемый диапазон")
            }
        }
    }
}
