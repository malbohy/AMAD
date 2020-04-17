//
//  Leka2atTahomakViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 4/17/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class Leka2atTahomakViewController: UIViewController {

    @IBOutlet weak var vedio1_view: UIView!
    @IBOutlet weak var vedio2_view: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        playVideo()
        playVideo2()
    }
    private func playVideo() {
           guard let path = Bundle.main.path(forResource: "patient_1", ofType:"mp4") else {
               debugPrint("video.m4v not found")
               return
           }
           let player = AVPlayer(url: URL(fileURLWithPath: path))
           let playerController = AVPlayerViewController()
           playerController.player = player
        playerController.showsPlaybackControls = true
        playerController.view.frame = self.vedio1_view.frame
        self.vedio1_view.addSubview(playerController.view)
//           present(playerController, animated: true) {
//               player.play()
//           }
       }
    
        
    private func playVideo2() {
           guard let path = Bundle.main.path(forResource: "patient_2", ofType:"mp4") else {
               debugPrint("video.m4v not found")
               return
           }
           let player = AVPlayer(url: URL(fileURLWithPath: path))
           let playerController = AVPlayerViewController()
           playerController.player = player
        playerController.showsPlaybackControls = true
        playerController.view.frame = self.vedio2_view.frame
        self.vedio2_view.addSubview(playerController.view)
//           present(playerController, animated: true) {
//               player.play()
//           }
       }

}
