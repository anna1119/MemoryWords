//
//  video.swift
//  Li_Yuing_ISU
//
//  Created by Home on 2018/1/25.
//  Copyright © 2018年 Period One. All rights reserved.
//

import UIKit
import AVKit
//This enables the view controller to play video
class video: UIViewController {

    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "video", ofType: "mp4")
        {
            let video=AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer=AVPlayerViewController()
            videoPlayer.player=video
            
            present(videoPlayer, animated: true, completion: {
                video.play()
            })
            
            
        }
    }
    //When the users press this button, they can watch the video. These codes pass the data one by one
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
