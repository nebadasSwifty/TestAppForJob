//
//  ScoresController.swift
//  TestAppGuessing
//
//  Created by Кирилл on 02.05.2022.
//

import UIKit

final class ScoresController: UIViewController {
    //MARK: - Variables
    @IBOutlet weak var playerAttempsLabel: UILabel!
    @IBOutlet weak var computerAttempsLabel: UILabel!
    @IBOutlet weak var winningLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        computerAttempsLabel.text = "Компьютер сделал \(Guessing.sharing.attempComputer) попытки для отгадывания"
        playerAttempsLabel.text = "Ты сделал \(Guessing.sharing.attempPlayer) попытки для отгадывания"
        Guessing.sharing.compareAttemps(winningLabel)
    }
    //MARK: - Actions
    @IBAction func mainMenuButtonPressed(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
