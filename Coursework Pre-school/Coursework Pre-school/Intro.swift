//
//  Intro.swift
//  Coursework Pre-school
//
//  Created by Ferdi Cocelli on 22/03/2017.
//  Copyright © 2017 Ferdi Cocelli. All rights reserved.
//

import UIKit

class Intro: UIViewController {

    @IBOutlet weak var hand: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        UIView.animate(withDuration: 0.5, delay: 0.8, options: [.transitionCurlUp,.transitionFlipFromTop , .transitionFlipFromBottom, .curveEaseIn, .curveEaseOut,.autoreverse, .repeat], animations: {
            
            self.hand.center.y = self.hand.center.y + 1
            self.hand.center.y = self.hand.center.y - 40
        
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
