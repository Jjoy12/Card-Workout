//
//  CWButton.swift
//  Card-Workout2
//
//  Created by Jerrion Joy on 12/20/20.
//

import UIKit

class CWButton: UIButton {

    override init(frame: CGRect) {
         super.init(frame: frame)
         configure()
         
     }
     
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
     
     init(backgroundColor: UIColor, title: String) {
         super.init(frame: .zero)
         self.backgroundColor = backgroundColor
         setTitle(title, for: .normal)
         configure()
     }
     func configure() {
         layer.cornerRadius = 12
         titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
         setTitleColor(.black, for: .normal)
         translatesAutoresizingMaskIntoConstraints = false
     }
}
