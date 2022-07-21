//
//  HUD.swift
//  Amos-project
//
//  Created by Pelayo Trives on 18/07/2022.
//

import Foundation
import UIKit

class HUD: UIView {
    // MARK: Variables
    static let shared: HUD = HUD()
    var state: HUDState = .closed {
        didSet {
            self.onStateUpdate()
            self.topLeftButton.onStateUpdate()
        }
    }
    // MARK: UI
    let topLeftButton: MenuButton = MenuButton()
    let signOutButton: SignOutButton = SignOutButton()
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .clear
        setupUI()
        setupNotifications()
    }

    override func removeFromSuperview() {
        super.removeFromSuperview()
    }

    required init?(coder: NSCoder) {
        fatalError("did not instanstiate coder")
    }

    // MARK: Hit
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let views: [UIView] = [self.topLeftButton, self.signOutButton]
        for view in views {
            if view.frame.contains(point) {
                return view
            }
        }
        return nil
    }
}
