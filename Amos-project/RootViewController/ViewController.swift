//
//  ViewController.swift
//  Amos-project
//
//  Created by Pelayo Trives on 13/07/2022.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Variables
    static let identifier: String = "[ViewController]"
    // Equivalente de padding en Swift (tiene T,L,R,B)
    static var safeAreaInsets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

    var state: ExperienceState = .splash {
        didSet {
            self.onStateUpdate()
        }
    }

    // MARK: UI
    let splash: Splash = Splash()
    var splashTopConstraint﻿: NSLayoutConstraint?
    var splashRightConstraint﻿: NSLayoutConstraint?
    var splashBottomConstraint﻿: NSLayoutConstraint?
    var splashLeftConstraint﻿: NSLayoutConstraint?

    let landing: Landing = Landing()
    var landingTopConstraint﻿: NSLayoutConstraint?
    var landingRightConstraint﻿: NSLayoutConstraint?
    var landingBottomConstraint﻿: NSLayoutConstraint?
    var landingLeftConstraint﻿: NSLayoutConstraint?

    let menu: Menu = Menu()
    var menuTopConstraint﻿: NSLayoutConstraint?
    var menuRightConstraint﻿: NSLayoutConstraint?
    var menuBottomConstraint﻿: NSLayoutConstraint?
    var menuLeftConstraint﻿: NSLayoutConstraint?

    let hud: HUD = HUD.shared
    var HUDTopConstraint﻿: NSLayoutConstraint?
    var HUDRightConstraint﻿: NSLayoutConstraint?
    var HUDBottomConstraint﻿: NSLayoutConstraint?
    var HUDLeftConstraint﻿: NSLayoutConstraint?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .red
        self.setupUI()
        self.setupNotifications()
    }

    override func viewSafeAreaInsetsDidChange() {
        ViewController.safeAreaInsets = self.view.safeAreaInsets
        debugPrint("\(ViewController.identifier) \(DebuggingIdentifiers.actionOrEventSucceded) Updated Safe Area Insets: \(ViewController.safeAreaInsets)")
        self.updateConstraints()
    }

}
