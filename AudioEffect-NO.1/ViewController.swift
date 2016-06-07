//
//  ViewController.swift
//  AudioEffect-NO.1
//
//  Created by Bruce on 16/6/6.
//  Copyright © 2016年 Ucai. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    lazy var engine = AVAudioEngine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let input = engine.inputNode!
        let output = engine.outputNode
        
        engine.connect(input, to: output, format: input.inputFormatForBus(0))
        
        try! engine.start()
    }

    @IBAction func playOrStop(sender: AnyObject) {
        try! engine.start()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

