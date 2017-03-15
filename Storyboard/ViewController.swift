//
//  ViewController.swift
//  Storyboard
//
//  Created by James Slusser on 3/14/17.
//  Copyright © 2017 James Slusser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scene1Label: UILabel!
    
    @IBAction func returned(segue: UIStoryboardSegue) {
        scene1Label.text = "Returned from Scene 2"
    }
    
    override func prepare(for segue: UIStoryboardSegue,sender: Any?) {
        let destination = segue.destination
        as! Scene2ViewController
        destination.labelText = "Arrived from Scene 1"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

