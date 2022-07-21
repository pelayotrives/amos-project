//
//  HUD+UI.swift
//  Amos-project
//
//  Created by Pelayo Trives on 18/07/2022.
//

import Foundation
import UIKit
import TinyConstraints

extension HUD {
    func setupUI() {
        setupTopLeftButton()
        setupSignOutButton()
    }

    private func setupTopLeftButton() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.addSubview(self.topLeftButton)
            self.topLeftButton.left(to: self, offset: paddingConstant)
            self.topLeftButton.top(to: self, offset: paddingConstant)
            self.topLeftButton.width(buttonDimensionConstant)
            self.topLeftButton.height(buttonDimensionConstant)
            self.topLeftButton.layer.masksToBounds = true
            self.topLeftButton.layer.cornerRadius = buttonDimensionConstant/2
            // shadow
            self.topLeftButton.layer.shadowPath = UIBezierPath(
                roundedRect: CGRect(x: 0, y: 0, width: buttonDimensionConstant, height: buttonDimensionConstant),
                cornerRadius: buttonDimensionConstant/2).cgPath
            self.topLeftButton.layer.shadowColor = UIColor.black.cgColor
            self.topLeftButton.layer.shadowOffset = CGSize(width: 0, height: 5)
            self.topLeftButton.layer.shadowOpacity = 0.5
        }
    }

    private func setupSignOutButton() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.signOutButton.isHidden = true
            self.addSubview(self.signOutButton)
            self.signOutButton.right(to: self, offset: -paddingConstant)
            self.signOutButton.top(to: self, offset: paddingConstant)
            self.signOutButton.width(145)
            self.signOutButton.height(buttonDimensionConstant)
            self.signOutButton.layer.masksToBounds = true
            self.signOutButton.layer.cornerRadius = buttonDimensionConstant/2
        }
    }
}
