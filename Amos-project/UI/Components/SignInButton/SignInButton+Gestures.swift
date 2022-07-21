//
//  SignInButton+Gestures.swift
//  Amos-project
//
//  Created by Pelayo Trives on 14/07/2022.
//

import Foundation
import UIKit

extension SignInButton {
    func setupGestures() {
        setupTapGesture()
    }

    private func setupTapGesture() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.onTap(sender:)))
            tap.numberOfTapsRequired = 1
            self.addGestureRecognizer(tap)

        }
    }

    @objc private func onTap(sender: UITapGestureRecognizer) {

        switch sender.state {
        case .began:
            debugPrint("tap started")
            break
        case .ended:
            debugPrint("tap ended")
            NotificationCenter.default.post(
                name: SystemNotifications.onSignIn,
                object: nil,
                userInfo: nil)
            break
        default:
            break
        }
    }
}
