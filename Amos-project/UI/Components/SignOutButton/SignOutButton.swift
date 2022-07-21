//
//  SignOutButton.swift
//  Amos-project
//
//  Created by Pelayo Trives on 18/07/2022.
//

import Foundation
import UIKit

class SignOutButton: UIView {
    // MARK: Variables
    // MARK: UI
    let label: UILabel = UILabel()
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .white
        self.setupUI()
        self.setupGestures()
    }

    override func removeFromSuperview() {
        super.removeFromSuperview()
        self.label.removeFromSuperview()
    }

    required init?(coder: NSCoder) {
        fatalError("did not instanstiate coder")
    }
}
