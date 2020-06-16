//
//  ViewController.swift
//  securityEnhancementsTest
//
//  Created by Gamal Mostafa on 6/15/20.
//  Copyright © 2020 Gamal Mostafa. All rights reserved.
//

import UIKit
import TPObfuscation

class ViewController: UIViewController {
    
    @IBOutlet weak var nonPasteableTextField: NonPasteableTextField!
    @IBOutlet weak var pasteableTextField: UITextField!
    @IBOutlet weak var textFieldWithExtension: UITextField!
    
    @IBOutlet weak var obfuscatedTitle: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldWithExtension.canPaste = false
        obfuscatedTitle.text = TPObStr.O.r.a.n.g.e.space.i.s.space.s.e.c.u.r.e.d
    
    }


}

