//
//  SignOutButton+Gestures.swift
//  Amos-project
//
//  Created by Pelayo Trives on 18/07/2022.
//

import Foundation
import UIKit

extension SignOutButton {
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
        debugPrint("tap")
        NotificationCenter.default.post(
            name: SystemNotifications.onSignOut,
            object: nil,
            userInfo: nil)
    }
}
