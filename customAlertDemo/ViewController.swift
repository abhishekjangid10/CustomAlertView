//
//  ViewController.swift
//  customAlertDemo
//
//  Created by Abhishek Jangid on 16/02/19.
//  Copyright © 2019 Abhishek Jangid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let alertService = AlertService()
    let aa = "First, go to the YouTube page containing the video you want to download. When you've found the page, press Ctrl+L on your keyboard to highlight the text in the address bar, and then Ctrl+C to copy the Internet address. If you are on an Apple computer substitute Ctrl with the Command key. Once this address has been copied, paste that address into the text field below by clicking inside the box and pressing Ctrl+V on your keyboard. Then, click the Download Video button.Note: If the text field or Download Video button above is not visible or clickable, you can also type savefrom.net/ in front of any YouTube address.Click the download video in browser link, below the green box. If you don't see that link immediately, wait 10 to 15 seconds. It will be located to the right of the video you want to download.Note: Using the above link will allow you to download a YouTube video for free. Ignore any advertisements that say you need to pay money to download a video.If done properly, below the link mentioned above, you will see a preview of the video (as shown below), along with a green Download button and the video format."
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapOpenAlert(_ sender: Any) {
        let alertVC = alertService.alert(title: "Park Holiday", body: aa, buttonTitle: "Confirm") {
            print("Now Please proceed")
        }
        
        present(alertVC, animated: true)
    }
    
}

