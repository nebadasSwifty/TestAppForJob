//
//  ViewController.swift
//  TestAppGuessing
//
//  Created by Кирилл on 02.05.2022.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Variables
    
    
    //MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startGameButtonPressed(_ sender: UIButton) {
        Guessing.sharing.defaultValue()
    }
}

