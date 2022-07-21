//
//  ViewController+Notifications.swift
//  Amos-project
//
//  Created by Pelayo Trives on 14/07/2022.
//

import Foundation
import UIKit

extension ViewController {
    func setupNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.onSignIn), name: SystemNotifications.onSignIn, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.onSignOut), name: SystemNotifications.onSignOut, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.onOpenMenu), name: SystemNotifications.onOpenMenu, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.onCloseMenu), name: SystemNotifications.onCloseMenu, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.onHUDBack), name: SystemNotifications.onHUDBack, object: nil)
    }

    @objc private func onSignIn() {

        debugPrint("\(ViewController.identifier) \(DebuggingIdentifiers.notificationRecieved) on sign in notification")
        self.state = .landing
    }

    @objc private func onSignOut() {
        debugPrint("\(ViewController.identifier) \(DebuggingIdentifiers.notificationRecieved) on sign out notification")
        self.state = .splash
    }

    @objc private func onOpenMenu() {
        debugPrint("\(ViewController.identifier) \(DebuggingIdentifiers.notificationRecieved) on open Menu notification")
        self.state = .menu
    }

    @objc private func onCloseMenu() {
        debugPrint("\(ViewController.identifier) \(DebuggingIdentifiers.notificationRecieved) on Close Menu notification")
        self.state = .landing
    }

    @objc private func onHUDBack() {
        debugPrint("\(ViewController.identifier) \(DebuggingIdentifiers.notificationRecieved) on Back Menu notification")
        self.state = .landing
    }

}
