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
        if let bundlePath = Bundle.main.path(forResource: "bankrobber", ofType: "mp3")  {
            
            let url = URL.init(fileURLWithPath: bundlePath)
            
            do {
                try audioPlayer = AVAudioPlayer(contentsOf: url)
                audioPlayer?.delegate = self
                audioPlayer?.prepareToPlay()
            } catch let error  as NSError {
                print("Audio player error \(error.localizedDescription)")
            }
        }
        
    }


    @IBAction func playAudio(_ sender: Any) {
        audioPlayer?.play()
    }
    
    @IBAction func stopAudio(_ sender: Any) {
        audioPlayer?.stop()
    }
    
    @IBAction func adjustVolume(_ sender: Any) {
        audioPlayer?.volume = volumeControl.value
    }
}

