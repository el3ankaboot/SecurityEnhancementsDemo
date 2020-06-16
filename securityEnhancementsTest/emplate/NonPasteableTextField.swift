//
//  NonPasteableTextField.swift
//  securityEnhancementsTest
//
//  Created by Gamal Mostafa on 6/15/20.
//  Copyright © 2020 Gamal Mostafa. All rights reserved.
//

import Foundation
import UIKit

class NonPasteableTextField: UITextField {
    
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(UIResponderStandardEditActions.paste(_:)) {
            return false
        }
        return super.canPerformAction(action, withSender: sender)
    }
}
