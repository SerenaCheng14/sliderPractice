//
//  ViewController.swift
//  hateWork
//
//  Created by Serena on 2020/12/2.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var rightImage: UIImageView!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
            
        leftImage.image = UIImage(named: "l-1.png")
        rightImage.image = UIImage(named: "r-1.png")
        
      
        // Do any additional setup after loading the view.
    }

    @IBAction func slider(_ sender: UISlider) {
        
        let speed = sender.value * 20.0
        leftImage.frame.origin.x = CGFloat(65 + speed)
        rightImage.frame.origin.x = CGFloat(700 - speed)
        
        let resultL: String = String(format: "l-%d.png", arguments: [Int(sender.value)])
        leftImage.image = UIImage(named: resultL)
        
        let resultR: String = String(format: "r-%d.png", arguments: [Int(sender.value)])
        rightImage.image = UIImage(named: resultR)
        
            return
        }
    

   
}
    
           
          
    

