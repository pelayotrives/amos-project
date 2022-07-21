//
//  ViewController+Update.swift
//  Amos-project
//
//  Created by Pelayo Trives on 18/07/2022.
//

import Foundation
import UIKit

extension ViewController {
    func onStateUpdate() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            debugPrint("\(ViewController.identifier) \(DebuggingIdentifiers.actionOrEventSucceded) Updated State to : \(self.state)")
            switch self.state {
            case .splash:
                self.landing.isHidden = true
                self.menu.isHidden = true
                self.splash.isHidden = false
                break
            case .landing:
                self.landing.isHidden = false
                self.menu.isHidden = true
                self.splash.isHidden = true
                break
            case .menu:
                self.landing.isHidden = true
                self.menu.isHidden = false
                self.splash.isHidden = true
                break
            case .event:
                break
            }
        }
    }

    func updateConstraints() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            updateSafeAreaInsets(topConstraint: self.splashTopConstraint﻿, rightConstraint: self.splashRightConstraint﻿, bottomConstraint: self.splashBottomConstraint﻿, leftConstraint: self.splashLeftConstraint﻿)
            updateSafeAreaInsets(topConstraint: self.landingTopConstraint﻿, rightConstraint: self.landingRightConstraint﻿, bottomConstraint: self.landingBottomConstraint﻿, leftConstraint: self.landingLeftConstraint﻿)
            updateSafeAreaInsets(topConstraint: self.HUDTopConstraint﻿, rightConstraint: self.HUDRightConstraint﻿, bottomConstraint: self.HUDBottomConstraint﻿, leftConstraint: self.HUDLeftConstraint﻿)
            updateSafeAreaInsets(topConstraint: self.menuTopConstraint﻿, rightConstraint: self.menuRightConstraint﻿, bottomConstraint: self.menuBottomConstraint﻿, leftConstraint: self.menuLeftConstraint﻿)
        }
    }
}
