//
//  ViewController.swift
//  03 Color Change
//
//  Created by 김종현 on 2018. 4. 23..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorLabel: UILabel!
    var color = ["흰색","초록", "노랑"]
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorLabel.text = color[0]
    }

    @IBAction func changeColor(_ sender: Any) {
    
        count = count + 1
        if count == 3 {
            count = 0
        }
        colorLabel.text = color[count]
        
        switch count {
        case 1:
            view.backgroundColor = UIColor.green
        case 2:
            view.backgroundColor = UIColor.yellow
        default:
            view.backgroundColor = UIColor.white
        }
    }
}

