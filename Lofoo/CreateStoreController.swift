//
//  CreateStoreController.swift
//  Lofoo
//
//  Created by Igor Vorobiov on 12/30/15.
//  Copyright © 2015 Igor Vorobiov. All rights reserved.
//

import UIKit

class CreateStoreController: UIViewController, UIToolbarDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func positionForBar(bar: UIBarPositioning) -> UIBarPosition {
        
        return UIBarPosition.TopAttached;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
