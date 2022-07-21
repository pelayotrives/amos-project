//
//  ViewController+UI.swift
//  Amos-project
//
//  Created by Pelayo Trives on 13/07/2022.
//

import Foundation
import UIKit
import TinyConstraints

extension ViewController {
    func setupUI() {
        self.setupLanding()
        self.setupHUD()
        self.setupSplash()
    }

    private func setupSplash() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.view.addSubview(self.splash)
            //          self.splash.edgesToSuperview()
            self.splashTopConstraint﻿ = self.splash.top(to: self.view, offset: ViewController.safeAreaInsets.top)
            self.splashRightConstraint﻿ = self.splash.right(to: self.view, offset: -ViewController.safeAreaInsets.right)
            self.splashBottomConstraint﻿ = self.splash.bottom(to: self.view, offset: -ViewController.safeAreaInsets.bottom)
            self.splashLeftConstraint﻿ = self.splash.left(to: self.view, offset: ViewController.safeAreaInsets.left)
        }
    }

    private func setupLanding() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.view.addSubview(self.landing)
            //            self.landing.edgesToSuperview()
            self.landing.isHidden = true

            self.landingTopConstraint﻿ = self.landing.top(to: self.view, offset: ViewController.safeAreaInsets.top)
            self.landingRightConstraint﻿ = self.landing.right(to: self.view, offset: -ViewController.safeAreaInsets.right)
            self.landingBottomConstraint﻿ = self.landing.bottom(to: self.view, offset: -ViewController.safeAreaInsets.bottom)
            self.landingLeftConstraint﻿ = self.landing.left(to: self.view, offset: ViewController.safeAreaInsets.left)
        }
    }

    private func setupHUD() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.view.addSubview(self.hud)
            //            HUD.shared.edgesToSuperview()

            self.HUDTopConstraint﻿ = self.hud.top(to: self.view, offset: ViewController.safeAreaInsets.top)
            self.HUDRightConstraint﻿ = self.hud.right(to: self.view, offset: -ViewController.safeAreaInsets.right)
            self.HUDBottomConstraint﻿ = self.hud.bottom(to: self.view, offset: -ViewController.safeAreaInsets.bottom)
            self.HUDLeftConstraint﻿ = self.hud.left(to: self.view, offset: ViewController.safeAreaInsets.left)
        }
    }

    private func setupMenu() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.view.addSubview(self.menu)
            self.menu.edgesToSuperview()
            self.menu.isHidden = true

            self.menuTopConstraint﻿ = self.menu.top(to: self.view, offset: ViewController.safeAreaInsets.top)
            self.menuRightConstraint﻿ = self.menu.right(to: self.view, offset: -ViewController.safeAreaInsets.right)
            self.menuBottomConstraint﻿ = self.menu.bottom(to: self.view, offset: -ViewController.safeAreaInsets.bottom)
            self.menuLeftConstraint﻿ = self.menu.left(to: self.view, offset: ViewController.safeAreaInsets.left)
        }
    }

}
