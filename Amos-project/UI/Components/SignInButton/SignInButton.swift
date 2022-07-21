//
//  SignInButton.swift
//  Amos-project
//
//  Created by Pelayo Trives on 14/07/2022.
//

import Foundation
import UIKit

class SignInButton: UIView {
    // MARK: Variables
    // MARK: UI
    let label: UILabel = UILabel()
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .black
        self.setupUI()
        self.setupGestures()
    }

    override func removeFromSuperview() {
        super.removeFromSuperview()
    }

    required init?(coder: NSCoder) {
        fatalError("did not instanstiate coder")
    }
}
