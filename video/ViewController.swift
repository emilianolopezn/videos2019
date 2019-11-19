//
//  ViewController.swift
//  video
//
//  Created by MaestroD1 on 11/19/19.
//  Copyright © 2019 MaestroD1. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webVideo: WKWebView!
    @IBAction func doTapBoton(_ sender: Any) {
        let YoutubeID =  "78wE4evw_zs" // Your Youtube ID here
        let appURL = NSURL(string: "youtube://www.youtube.com/watch?v=\(YoutubeID)")!
        let webURL = NSURL(string: "https://www.youtube.com/watch?v=\(YoutubeID)")!
        let application = UIApplication.shared
        
        if application.canOpenURL(appURL as URL) {
            application.open(appURL as URL)
        } else {
            // if Youtube app is not installed, open URL inside Safari
            application.open(webURL as URL)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let cadena = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/78wE4evw_zs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"
        webVideo.loadHTMLString(cadena, baseURL: nil)
    }


}

