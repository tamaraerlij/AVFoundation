//
//  ViewController.swift
//  AVFoundation
//
//  Created by Tamara Erlij on 29/04/20.
//  Copyright © 2020 Tamara Erlij. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    @IBOutlet weak var volumeControl: UISlider!
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func playAudio(_ sender: Any) {
    }
    
    @IBAction func stopAudio(_ sender: Any) {
    }
    
    @IBAction func adjustVolume(_ sender: Any) {
    }
}

