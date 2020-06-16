//
//  TextField+NoPaste.swift
//  securityEnhancementsTest
//
//  Created by Gamal Mostafa on 6/15/20.
//  Copyright © 2020 Gamal Mostafa. All rights reserved.
//

import Foundation
import UIKit



fileprivate var canPaste_FILEPRIVATE: [ObjectIdentifier:Bool] = [:]

extension UITextField {
    
    var canPaste: Bool {
        get {return canPaste_FILEPRIVATE[ObjectIdentifier(self)] ?? true}
        set {canPaste_FILEPRIVATE[ObjectIdentifier(self)] = newValue}
    }
    
    
    
    
    
    override open func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if !canPaste && action == #selector(UIResponderStandardEditActions.paste(_:)) {
            return false
        }
        return super.canPerformAction(action, withSender: sender)
    }
}



