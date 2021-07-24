//
//  WebViewController.swift
//  Demo_007
//
//  Created by 鄭淳澧 on 2021/7/24.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

                let url = URL(string: "https://redirector.googlevideo.com/videoplayback?expire=1627149826&ei=ogH8YO7qB8jC7QSui6hA&ip=176.53.132.53&id=o-AJtNqSYLO7qaDMp9WKfiNk5kDhOp9cB5CQ5QycZ44UhM&itag=18&source=youtube&requiressl=yes&mh=pw&mm=31%2C29&mn=sn-n8v7kn76%2Csn-n8v7znzl&ms=au%2Crdu&mv=u&mvi=11&pl=24&vprv=1&mime=video%2Fmp4&ns=6o7xzWf77kmh5npJRTatnvkG&gir=yes&clen=7005402&ratebypass=yes&dur=145.194&lmt=1544189794646015&mt=1627127526&fvip=11&fexp=24001373%2C24007246&c=WEB&txp=5531432&n=-D85ajHTYCXyYy&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgFGHARrKxBocLdnjkzKa3mBJ82mKEoS-Mn9Bty59Ep_cCIQDNmOXswK0aGyFwPftkUnyohYkOH7m60sVwCVLaCTAHNg%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl&lsig=AG3C_xAwRAIgFl8aG-Pylfp14hi-os4mKkd1DOl9pLLA7mD31lZtpugCIBixBIvxHwGOxIeEDL0f7kxkPb8AwfT4XuQmpaWhwGeF&title=Marvel_Studios%27_Avengers_-_Official_Trailer")!
                let request = URLRequest(url: url)
                myWebView.load(request)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
