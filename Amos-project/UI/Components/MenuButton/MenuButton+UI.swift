//
//  MenuButton+UI.swift
//  Amos-project
//
//  Created by Pelayo Trives on 18/07/2022.
//

import Foundation
import UIKit
import TinyConstraints

extension MenuButton {
    func setupUI() {
        setupImageView()
    }

    private func setupImageView() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.imageView.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(self.imageView)
            self.imageView.edgesToSuperview()
            self.imageView.contentMode = .scaleAspectFill
        }
    }

}
