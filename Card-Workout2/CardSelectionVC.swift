//
//  CardSelectionVC.swift
//  Card-Workout2
//
//  Created by Jerrion Joy on 12/20/20.
//

import UIKit

class CardSelectionVC: UIViewController {

    let cardImageView = UIImageView()
    let stopButton = CWButton(backgroundColor: .systemRed, title: "Stop")
    let startButton = CWButton(backgroundColor: .systemGreen, title: "Start")
    let rulesButton = CWButton(backgroundColor: .systemBlue, title: "Rules")

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()

    }
    
    func configureUI() {
        configureCardImageView()
        configureStopButton()
        configureStartButton()
        configureRulesButton()
            
            
        }
        
    func configureCardImageView() {
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
            
        ])
        
    }
    
    func configureStopButton() {
        view.addSubview(stopButton)
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
            
            
            
        ])
    }
    
    func configureStartButton() {
        view.addSubview(startButton)
        
        NSLayoutConstraint.activate([
            
            startButton.widthAnchor.constraint(equalToConstant: 115),
            startButton.heightAnchor.constraint(equalToConstant: 50),
            startButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            startButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
            
        ])
    }
    
    func configureRulesButton() {
        view.addSubview(rulesButton)
        
        NSLayoutConstraint.activate([
            
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
            
        ])
    }
}
