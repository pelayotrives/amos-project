//
//  MenuButton.swift
//  Amos-project
//
//  Created by Pelayo Trives on 18/07/2022.
//

import Foundation
import UIKit

class MenuButton: UIView {
    // MARK: Variables
    static let identifier: String = "[MenuButton]"

    // MARK: UI
    let imageView: UIImageView = UIImageView(image: UIImage(named: HUDImages.hamburger))
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .white
        setupUI()
        setupGestures()
    }

    override func removeFromSuperview() {
        super.removeFromSuperview()
    }

    required init?(coder: NSCoder) {
        fatalError("did not instanstiate coder")
    }
}
