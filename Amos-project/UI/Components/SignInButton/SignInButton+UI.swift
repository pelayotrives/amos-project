//
//  SignInButton+UI.swift
//  Amos-project
//
//  Created by Pelayo Trives on 14/07/2022.
//

import Foundation
import UIKit
import TinyConstraints

extension SignInButton {
    func setupUI() {
        setupLabel()
    }

    private func setupLabel() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.label.isUserInteractionEnabled = false
            self.addSubview(self.label)
            self.label.centerInSuperview()
            self.label.text = "SIGN IN"
            self.label.textColor = .white
            self.label.sizeToFit()
        }
    }
}
