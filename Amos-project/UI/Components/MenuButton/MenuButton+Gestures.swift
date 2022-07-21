//
//  MenuButton+Gestures.swift
//  Amos-project
//
//  Created by Pelayo Trives on 18/07/2022.
//

import Foundation
import UIKit

extension MenuButton {
    func setupGestures() {
        setupTapGesture()
    }

    private func setupTapGesture() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.onTap(sender:)))
            self.addGestureRecognizer(tap)

        }
    }

    @objc private func onTap(sender: UITapGestureRecognizer) {
        debugPrint("\(MenuButton.identifier) Tap")
        let notification: Notification.Name
        switch HUD.shared.state {
        case .open:
            HUD.shared.state = .closed
            notification = SystemNotifications.onCloseMenu
            break
        case .closed:
            HUD.shared.state = .open
            notification = SystemNotifications.onOpenMenu
            break
        case .back:
            HUD.shared.state = .closed
            notification = SystemNotifications.onHUDBack
            break
        }
        NotificationCenter.default.post(
            name: notification,
            object: nil,
            userInfo: nil)
    }
}
