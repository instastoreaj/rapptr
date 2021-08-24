//
//  AnimationViewController.swift
//  iOSTest
//
//  Copyright © 2020 Rapptr Labs. All rights reserved.

import UIKit

class AnimationViewController: UIViewController {
    
    /**
     * =========================================================================================
     * INSTRUCTIONS
     * =========================================================================================
     * 1) Make the UI look like it does in the mock-up.
     *
     * 2) Logo should fade out or fade in when the user hits the Fade In or Fade Out button
     *
     * 3) User should be able to drag the logo around the screen with his/her fingers
     *
     * 4) Add a bonus to make yourself stick out. Music, color, fireworks, explosions!!! Have Swift experience? Why not write the Animation 
     *    section in Swfit to show off your skills. Anything your heart desires!
     *
     */
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var fadeBtn: BlueButton!
    private var fadeIn = true
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Animation"
        logoImg.alpha = 0.0
        let dragPan = UIPanGestureRecognizer(target: self, action: #selector(self.dragging(_:)))
        logoImg.addGestureRecognizer(dragPan)
    }
       
    @IBAction func didPressFade(_ sender: Any) {
        if fadeIn {
            UIView.animate(withDuration: 1.0, delay: 0.5, options: .curveEaseOut, animations: {
                self.logoImg.alpha = 1.0
            }, completion: {_ in
                self.fadeIn = false
                self.fadeBtn.setTitle("FADE OUT", for: .normal)
            })
        } else {
            UIView.animate(withDuration: 1.0, delay: 0.5, options: .curveEaseOut, animations: {
                self.logoImg.alpha = 0.0
            }, completion: {_ in
                self.fadeIn = true
                self.fadeBtn.setTitle("FADE IN", for: .normal)
            })
        }
    }
    
    @objc func dragging(_ p:UIPanGestureRecognizer) {
        let vv = p.view;
        if (p.state == .began || p.state == .changed) {
            let delta = p.translation(in: vv?.superview)
            var c = vv?.center
            c?.x += delta.x
            c?.y += delta.y
            vv?.center = c!
            p.setTranslation(CGPoint(x: 0,y :0), in: vv?.superview)
        }
    }
}
