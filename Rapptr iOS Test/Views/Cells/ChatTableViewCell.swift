//
//  ChatTableViewCell.swift
//  iOSTest
//
//  Copyright © 2020 Rapptr Labs. All rights reserved.

import UIKit
import Nuke

class ChatTableViewCell: UITableViewCell {
    
    /**
     * =========================================================================================
     * INSTRUCTIONS
     * =========================================================================================
     * 1) Setup cell to match mockup
     *
     * 2) Include user's avatar image
     **/
    
    // MARK: - Outlets
    @IBOutlet weak var header: UILabel!
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var avatar: UIImageView! {
        didSet {
            avatar.layer.cornerRadius = avatar.bounds.height / 2
            avatar.clipsToBounds = true
        }
    }
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Public
    func setCellData(message: Message) {
        header.text = message.username
        body.text = message.message
        
        let options = ImageLoadingOptions(
          placeholder: UIImage(named: "AppIcon"),
          transition: .fadeIn(duration: 0.5)
        )
        
        if let thumbnailURL = URL(string: message.avatarURL) {
            Nuke.loadImage(with: thumbnailURL, options: options, into: avatar)
        }
    }
}
