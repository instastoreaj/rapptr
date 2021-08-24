//
//  CustomTextField.swift
//  Rapptr iOS Test
//
//  Created by Mac on 8/22/21.
//

import UIKit

@IBDesignable
final class CustomTextField: UITextField {
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        setup()
    }

    func setup() {
        self.attributedPlaceholder = NSAttributedString(string: "placeholder text",
                                                        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    }
}
