//
//  Splash+UI.swift
//  Amos-project
//
//  Created by Pelayo Trives on 13/07/2022.
//

import Foundation
import UIKit
import TinyConstraints

extension Splash {
    func setupUI() {
        self.setupSignInButton()
    }

    private func setupSignInButton() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            let view: SignInButton = SignInButton()
            self.addSubview(view)
            self.signInButton = view
            self.signInButton?.left(to: self, offset: paddingConstant)
            self.signInButton?.right(to: self, offset: -paddingConstant)
            self.signInButton?.bottom(to: self, offset: -paddingConstant)
            self.signInButton?.height(buttonDimensionConstant)
            //            border radius half of the height
            self.signInButton?.layer.masksToBounds = true
            self.signInButton?.layer.cornerRadius = buttonDimensionConstant/2
        }

    }
}
