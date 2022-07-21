//
//  HUD+Update.swift
//  Amos-project
//
//  Created by Pelayo Trives on 18/07/2022.
//

import Foundation
import UIKit

extension HUD {
    func onStateUpdate() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            switch self.state {
            case .open:
                self.signOutButton.isHidden = false
                break
            case .closed:
                self.signOutButton.isHidden = true
                break
            case .back:
                break
            }
        }
    }

}
