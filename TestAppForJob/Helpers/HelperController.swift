//
//  HelperController.swift
//  TestAppForJob
//
//  Created by Кирилл on 11.05.2022.
//

import UIKit

//MARK: - Extension
extension UIViewController {
    func hiddingKeyboardOnTapAnywhere() {
        let tapHideScreen = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboard))
        view.addGestureRecognizer(tapHideScreen)
    }
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    func showAlert(_ message: String) {
        let alert = UIAlertController(title: "Внимание", message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default)
        let cancelAlert = UIAlertAction(title: "Отмена", style: .cancel)
        alert.addAction(okAlert)
        alert.addAction(cancelAlert)
        present(alert, animated: true)
    }
}

