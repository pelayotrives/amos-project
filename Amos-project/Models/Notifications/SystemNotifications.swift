//
//  SystemNotifications.swift
//  Amos-project
//
//  Created by Pelayo Trives on 14/07/2022.
//

import Foundation
import UIKit

struct SystemNotifications {
    static let onSignIn: Notification.Name = Notification.Name("onSignIn")
    static let onSignOut: Notification.Name = Notification.Name("onSignOut")
    static let onOpenMenu: Notification.Name = Notification.Name("onOpenMenu")
    static let onCloseMenu: Notification.Name = Notification.Name("onCloseMenu")
    static let onHUDBack: Notification.Name = Notification.Name("onHUDBack")
}
