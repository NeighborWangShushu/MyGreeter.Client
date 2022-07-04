//
//  ViewController.swift
//  MyGreeter.Client
//
//  Created by 王斌 on 2022/7/4.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TimeLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let greeter = MyGreeterClient()
        TimeLabel.text = greeter.greet()
        // Do any additional setup after loading the view.
    }


}

