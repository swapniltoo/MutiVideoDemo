//
//  ViewController.swift
//  Video
//
//  Created by Swapnil Khollam on 08/05/20.
//  Copyright © 2017 kobe. All rights reserved.
//

import UIKit
//1 First, add the AVKit import
import AVKit


class ViewController: UIViewController {


    @IBOutlet weak var videoView: VideoView!
    @IBOutlet weak var videoView2: VideoView!
    
    @IBOutlet weak var videoView3: VideoView!
    @IBOutlet weak var videoView4: VideoView!

    let arr : [String] = ["" , "https://wolverine.raywenderlich.com/content/ios/tutorials/video_streaming/foxVillage.m3u8" , "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4" , "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4" , "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videoView.configure(url: "https://wolverine.raywenderlich.com/content/ios/tutorials/video_streaming/foxVillage.m3u8")
        videoView.isLoop = true
        videoView.play()
        
//        videoView2.configure(url: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        videoView2.configure(url: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")
        videoView2.isLoop = true
        videoView2.play()
        
        videoView3.configure(url: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")
        videoView3.isLoop = true
        videoView3.play()

        
        videoView4.configure(url: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4")
        videoView4.isLoop = true
        videoView4.play()

    }

    

    @IBAction func showFullFiew(_ sender: UIButton) {
        //2 Create an AVPlayerViewController and present it when the user taps
        
        
        let videoURL = arr[sender.tag]//"https://wolverine.raywenderlich.com/content/ios/tutorials/video_streaming/foxVillage.m3u8"
        let url = URL(string: videoURL)

        let player = AVPlayer(url: url!)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
      
        present(playerViewController, animated: true) {
          player.play()
        }
      }
    

    
    
    
}


