//
//  AppDelegate.swift
//  HelloWorld
//
//  Credits Ayisha Rahman on 02/07/2016.
//  Copyright © 2016 Apptivity Lab. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

    // DECLARE VARIABLES
    weak var greetingLabel: UILabel!
    weak var greetButton: UIButton!
    weak var byeButton: UIButton!
    weak var backButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellowColor()
                
        // TITLE
        let label: UILabel = UILabel(frame: CGRect(x: 16, y: 16, width: UIScreen.mainScreen().bounds.size.width - 32, height: 44))
        label.textAlignment = .Center;
            label.text = "Greetings earthlings. 👽"
            label.textColor = UIColor.blackColor()
            label.font = UIFont.systemFontOfSize(25)
            self.view.addSubview(label)
            self.greetingLabel = label

        // BUTTON 01 - Hi
        let greetButton: UIButton = UIButton(frame: CGRect(x: 16, y: CGRectGetMaxY(label.frame), width: (UIScreen.mainScreen().bounds.size.width - 32) / 2, height: 30))
        greetButton.backgroundColor = UIColor.blackColor()
        greetButton.setTitle("Hi", forState: UIControlState.Normal)
        greetButton.addTarget(self, action: "greet:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(greetButton)
        self.greetButton = greetButton
            
        // BUTTON 02 - Bye
        let byeButton: UIButton = UIButton(frame: CGRect(x: CGRectGetMaxX(greetButton.frame), y: greetButton.frame.origin.y, width: greetButton.frame.size.width, height: greetButton.frame.size.height))
        byeButton.backgroundColor = UIColor.blackColor()
        byeButton.setTitle("Bye", forState: UIControlState.Normal)
        byeButton.addTarget(self, action: "greet:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(byeButton)
        self.byeButton = byeButton
            
            
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func greet(sender: AnyObject) {
        if (sender as! UIButton) == self.greetButton {
            self.greetingLabel.text = "Vulcan salute! 🖖🏽"
        } else {
            self.greetingLabel.text = "Kbye. 😒"
        }
    }
}
