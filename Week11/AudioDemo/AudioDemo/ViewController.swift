//
//  ViewController.swift
//  AudioDemo
//
//  Created by Bennett Lee on 11/2/22.
//

import UIKit
import AudioToolbox
import AVFoundation

class ViewController: UIViewController {

    var soundId: SystemSoundID = 0

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // AVFoundation / AVAudioPlayer -> For long running audio
        do {
            let eletricIntroPath = Bundle.main.path(forResource: "electricIntro", ofType: "wav")
            let eletricIntroUrl = URL(fileURLWithPath: eletricIntroPath!)
            player = try AVAudioPlayer(contentsOf: eletricIntroUrl)

            player.prepareToPlay()
            

        } catch {
            print(error)
        }
        
        // AudioToolbox / System Sound Services -> For short sound effects
        let chordApath = Bundle.main.path(forResource: "chordA", ofType: "wav")!
        let chordAUrl = URL(fileURLWithPath: chordApath) as! CFURL

        // Create sound id
        AudioServicesCreateSystemSoundID(chordAUrl, &soundId) // 403252397

        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func playChordDidTapped(_ sender: UIButton) {
        AudioServicesPlaySystemSoundWithCompletion(soundId, nil)
        
        // Vibrate phone
        // AudioServicesPlaySystemSoundWithCompletion(kSystemSoundID_Vibrate, nil)

    }
    
    @IBAction func playIntroDidTapped(_ sender: UIButton) {
        player.play()
        
//        // Pause audio after 1 second
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
//            self.player.pause()
//        }
//
//        // Change playback rate of audio
//        player.enableRate = true
//        player.rate = 2.0

        // player.volume = 3

        
        // Control playback of audio
//         player.delegate = self
//        player.play(atTime: <#T##TimeInterval#>)
//        player.pause()
//        player.stop()
    }
    
}

