//
//  Splash.swift
//  Amos-project
//
//  Created by Pelayo Trives on 13/07/2022.
//

import Foundation
import UIKit

class Splash: UIView {
    // MARK: Variables
    // MARK: UI
    var signInButton: SignInButton?
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setupUI()
    }

    override func removeFromSuperview() {
        super.removeFromSuperview()
        self.signInButton?.removeFromSuperview()
        self.signInButton = nil
    }

    required init?(coder: NSCoder) {
        fatalError("did not instanstiate coder")
    }
}
