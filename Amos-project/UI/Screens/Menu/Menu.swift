//
//  Menu.swift
//  Amos-project
//
//  Created by Pelayo Trives on 18/07/2022.
//

import Foundation
import UIKit

class Menu: UIView {
    // MARK: Variables
    // MARK: UI
    // MARK: Lifecycle

    // This is the function that gets called when you initialize your view.
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        setupUI()
    }

    // This is the function that gets called when you remove your view from its superview.
    override func removeFromSuperview() {
        super.removeFromSuperview()
    }

    // This function is required for youa custom UIView.
    required init?(coder: NSCoder) {
        fatalError("did not instanstiate coder")
    }
}
