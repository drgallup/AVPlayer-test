//
//  ViewController.swift
//  AVPlayer Test
//
//  Created by Dylan Gallup on 5/24/18.
//  Copyright © 2018 Dylan Gallup. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func playVideo(_ sender: UIButton) {
        
        guard let url = URL(string: "https://devimages.apple.com.edgekey.net/samplecode/avfoundationMedia/AVFoundationQueuePlayer_HLS2/master.m3u8") else {
            return
        }
        
        // Create an AVPlayer, passing it the HTTP Live Streaming URL.
        let player = AVPlayer(url: url)
        
        // Create a new AVPlayerViewController and pass it a reference to the player.
        let controller = AVPlayerViewController()
        controller.player = player
        
        // Modally present the player and call the player's play() method when completed
        present(controller, animated: true) {
            player.play()
        }
    }
    

}

