//
//  Landing.swift
//  Amos-project
//
//  Created by Pelayo Trives on 13/07/2022.
//

import Foundation
import UIKit

class Landing: UIView {
    // MARK: Variables
    // MARK: UI
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
    }

    override func removeFromSuperview() {
        super.removeFromSuperview()
    }

    required init?(coder: NSCoder) {
        fatalError("did not instanstiate coder")
    }
}
