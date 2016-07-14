//
//  AppDelegate.swift
//  HelloWorld
//
//  Credits Ayisha Rahman on 02/07/2016.
//  Copyright © 2016 Apptivity Lab. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

    @IBOutlet weak var greetButton: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var byeButton: UIButton!
    @IBOutlet weak var danceButton: UIButton!
    @IBOutlet weak var homeButton: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // self.view.backgroundColor = UIColor.yellowColor()
 
        /* TITLE (greetingButton)
        
        let label: UILabel = UILabel(frame: CGRect(x: 16, y: 16, width: UIScreen.mainScreen().bounds.size.width - 32, height: 44))
        label.textAlignment = .Center;
            label.text = "Greetings earthlings. 👽"
            label.backgroundColor = UIColor.whiteColor()
            label.textColor = UIColor.blackColor()
            label.font = UIFont.systemFontOfSize(25)
            self.view.addSubview(label)
            self.greetingLabel = label
         */

        
        /* HI BUTTON (greetButton)..
         
        let greetButton: UIButton = UIButton(frame: CGRect(x: 16, y: CGRectGetMaxY(label.frame), width: (UIScreen.mainScreen().bounds.size.width - 32) / 2, height: 30))
        greetButton.backgroundColor = UIColor.blackColor()
        greetButton.setTitle("Hi", forState: UIControlState.Normal)
         */
        
        greetButton.addTarget(self, action: "greet:", forControlEvents: UIControlEvents.TouchUpInside)
        
        /* ---> ..HI BUTTON (greetButton)
         
        self.view.addSubview(greetButton)
        self.greetButton = greetButton
        // setting rounded colour
        greetButton.layer.cornerRadius = 5
        greetButton.layer.borderWidth = 1
        greetButton.layer.borderColor = UIColor.blackColor().CGColor
        */
        
        
        /* BYE BUTTON (byeButton)
        
         let byeButton: UIButton = UIButton(frame: CGRect(x: CGRectGetMaxX(greetButton.frame), y: greetButton.frame.origin.y, width: greetButton.frame.size.width, height: greetButton.frame.size.height))
        byeButton.backgroundColor = UIColor.blackColor()
        byeButton.setTitle("Bye", forState: UIControlState.Normal)
        */
        
        byeButton.addTarget(self, action: "greet:", forControlEvents: UIControlEvents.TouchUpInside)
        
        /* ---> ..BYE BUTTON (byeButton)
         
        self.view.addSubview(byeButton)
        self.byeButton = byeButton
        // setting rounded colour
        byeButton.layer.cornerRadius = 5
        byeButton.layer.borderWidth = 1
        byeButton.layer.borderColor = UIColor.blackColor().CGColor
       
         */
            
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
    
    // Instances Methods
    
    /* ---This is for experimentation with the codes below---
     
 func sayhi() {
        print("Vulcan salute! 🖖🏽")
        // Change "Greetings Earthlings." to "Vulcan salute! 🖖🏽"
        greetingLabel.text = "Vulcan salute! 🖖🏽"
    }
    
    func saybye() {
        print("Kbye. 😒")
        greetingLabel.text = "Kbye. 😒"
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