//
//  ViewController.swift
//  AnimationView
//
//  Created by HoangLuyen on 11/14/17.
//  Copyright © 2017 HoangLuyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var animationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func animatedBtnDidTouch(_ sender: UIButton) {
        UIView.animate(withDuration: 1, animations: {
            //Doi mau background view
//            self.animationView.backgroundColor = .brown
            //Tang kich thuoc view
//            self.animationView.frame.size.height += 10
//            self.animationView.frame.size.width += 10
            //Thay doi toa do view
//            self.animationView.frame.origin.y -= 20
//            }, completion: nil)
//-------------------------------------------------------
            self.animationView.backgroundColor = .brown
            self.animationView.frame.size.width += 10
            self.animationView.frame.size.height += 10
        }) {   _ in UIView.animate(withDuration: 1, delay: 0.25, options: [.autoreverse , .repeat], animations: {
            //self.animationView.frame.origin.y -= 20
            self.animationView.frame.size.height -= 10
            self.animationView.frame.size.width -= 10
            })
            
        }
    }
    

}

