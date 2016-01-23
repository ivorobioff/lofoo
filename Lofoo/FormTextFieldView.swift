//
//  FormTextFieldView.swift
//  Lofoo
//
//  Created by Igor Vorobiov on 1/23/16.
//  Copyright © 2016 Igor Vorobiov. All rights reserved.
//

import UIKit


@IBDesignable
class FormTextFieldView: UIView {

    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
}
