//
//  ViewController.swift
//  slide_imageview
//
//  Created by kiyolab02 on 2019/11/13.
//  Copyright © 2019 2019miraiketai. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    
    @IBOutlet weak var label: UILabel!
    var  image_button:[UIButton] = []
    let count = 5
    
    @IBOutlet weak var scroll_view: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        scroll_view.contentSize = CGSize(width: 200*count, height: 200)
        scroll_view.bounces = false
        scroll_view.delegate = self
        
//        var drakeIsTheBestInTheWorld = UIImageView()
//        drakeIsTheBestInTheWorld = UIImageView.init(frame: CGRect.init(x: 0, y:15, width: 100, height: 100))
//        drakeIsTheBestInTheWorld.image = UIImage(named: "mood10.jpg")
//        self.scroll_view.addSubview(drakeIsTheBestInTheWorld)
        for i in 0 ..< count{
            var button = UIButton()
            button = UIButton.init(frame: CGRect.init(x: i * 200 + (1 * i), y:15, width: 200, height: 200))
            button.setImage(UIImage(named: "mood10.jpg"), for: .normal)
            button.addTarget(self, action: #selector(buttonEvent(_:)), for: UIControl.Event.touchUpInside)
            button.tag = i
            self.scroll_view.addSubview(button)
        }
    }
    
    @objc func buttonEvent(_ sender: UIButton) {
        print("\(sender.tag)")
        label.text = "あなた今\(sender.tag)番目の画像を押しましたね？"
    }

}

