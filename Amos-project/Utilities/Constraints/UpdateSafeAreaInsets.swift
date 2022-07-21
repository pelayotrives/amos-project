//
//  UpdateSafeAreaInsets.swift
//  Amos-project
//
//  Created by Pelayo Trives on 20/07/2022.
//

import Foundation
import UIKit

func updateSafeAreaInsets(topConstraint: NSLayoutConstraint?, rightConstraint: NSLayoutConstraint?, bottomConstraint: NSLayoutConstraint?, leftConstraint: NSLayoutConstraint?) {
    DispatchQueue.main.async {
        topConstraint?.constant = ViewController.safeAreaInsets.top
        rightConstraint?.constant = -ViewController.safeAreaInsets.right
        bottomConstraint?.constant = -ViewController.safeAreaInsets.bottom
        leftConstraint?.constant = ViewController.safeAreaInsets.left
    }
}
