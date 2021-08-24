//
//  BlueButton.swift
//  Rapptr iOS Test
//
//  Created by Mac on 8/21/21.
//

import UIKit

@IBDesignable
final class BlueButton: UIButton {
    
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
        self.clipsToBounds = true
        self.backgroundColor = UIColor.HexToColor(hexString: "#0E5C89")
    }
}
