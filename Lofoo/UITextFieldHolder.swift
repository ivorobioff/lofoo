//
//  UIContainerTextField.swift
//  Lofoo
//
//  Created by Igor Vorobiov on 1/24/16.
//  Copyright © 2016 Igor Vorobiov. All rights reserved.
//

import UIKit

class UITextFieldHolder: UIBorderView {
    override func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView? {
        let child = super.hitTest(point, withEvent: event)
        
        if (child is UITextField || child == nil){
            return child
        }
        
        return findTextFieldView()
    }
    
    func findTextFieldView() -> UITextField? {
        
        for view in subviews {
            if (view is UITextField){
                return (view as! UITextField)
            }
        }
        
        return nil
    }
}
