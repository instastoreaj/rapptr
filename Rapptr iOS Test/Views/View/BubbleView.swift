//
//  BubbleView.swift
//  Rapptr iOS Test
//
//  Created by Mac on 8/22/21.
//

import UIKit

@IBDesignable
final class BubbleView: UIView {
    
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
        self.layer.cornerRadius = 8.0
        self.backgroundColor = UIColor.HexToColor(hexString: "#FFFFFF")
        let borderWidth: CGFloat = 1
        self.frame = frame.insetBy(dx: -borderWidth, dy: -borderWidth)
        self.layer.borderColor = UIColor.HexToColor(hexString: "#EFEFEF").cgColor
        self.layer.borderWidth = borderWidth
    }
}
