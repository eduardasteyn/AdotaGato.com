//
//  PickerView.swift
//  AdotaGato.com
//
//  Created by Nicole Taufenbach on 25/01/22.
//

import UIKit

class PickerView: UIPickerView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    private func setup() {
        
    }
 
}
