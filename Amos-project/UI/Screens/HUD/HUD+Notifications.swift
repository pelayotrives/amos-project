//
//  HUD+Notifications.swift
//  Amos-project
//
//  Created by Pelayo Trives on 18/07/2022.
//

import Foundation

extension HUD {
    func setupNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.onOpenMenu), name: SystemNotifications.onOpenMenu, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.onCloseMenu), name: SystemNotifications.onCloseMenu, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.onHUDBack), name: SystemNotifications.onHUDBack, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.onSignOut), name: SystemNotifications.onSignOut, object: nil)
    }

    @objc private func onOpenMenu() {
        debugPrint("on open Menu notification")
        self.state = .open
    }

    @objc private func onCloseMenu() {
        debugPrint("on Close Menu notification")
        self.state = .closed
    }

    @objc private func onHUDBack() {
        debugPrint("on Back Menu notification")
        self.state = .closed
    }

    @objc private func onSignOut() {
        debugPrint("on Sign Out notification")
        self.state = .closed
    }
}
