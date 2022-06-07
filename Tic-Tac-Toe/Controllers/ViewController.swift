//
//  ViewController.swift
//  Tic-Tac-Toe
//
//  Created by naruto kurama on 26.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupUI()
    }
    func setupUI() {
        startButton.layer.cornerRadius = 10
        cardView.layer.cornerRadius = 10
        cardView.layer.shadowOpacity = 0.4
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowRadius = 10
        cardView.layer.shadowOffset = .zero
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameField.resignFirstResponder()
    }
    @IBAction func startButtonClicked(_ sender: UIButton) {
        guard !nameField.text!.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        
        let controller = storyboard?.instantiateViewController(withIdentifier: "GameViewController") as! GameViewController
        controller.playerName = nameField.text
        controller.modalTransitionStyle = .flipHorizontal
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
        
    }
}

