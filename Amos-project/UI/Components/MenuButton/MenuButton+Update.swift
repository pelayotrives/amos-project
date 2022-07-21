//
//  MenuButton+Update.swift
//  Amos-project
//
//  Created by Pelayo Trives on 18/07/2022.
//

import Foundation
import UIKit

extension MenuButton {
    func onStateUpdate() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            let image: String
            switch HUD.shared.state {
            case .open:
                image = HUDImages.closed
                break
            case .closed:
                image = HUDImages.hamburger
                break
            case .back:
                image = HUDImages.back
                break
            }
            self.imageView.image = UIImage(named: image)
        }
    }

}
