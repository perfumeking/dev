//
//  ViewController.swift
//  jinhong2
//
//  Created by 박진홍 on 2022/04/24.
//

import UIKit

class ViewController: UIViewController {

    var imgNum = 0
    
    @IBOutlet var ImgView: UIImageView!
    var arr = ["b1.jpeg","g1.jpeg","y1.jpeg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        ImgView.image = UIImage(named:arr[0])
    }

    @IBAction func btnNext(_ sender: UIButton) {
        imgNum += 1
        if imgNum > 2 {
            imgNum = 0
            ImgView.image = UIImage(named:arr[imgNum])
        } else {
            ImgView.image = UIImage(named:arr[imgNum])
        }
    }
    
    @IBAction func btnPre(_ sender: UIButton) {
        imgNum -= 1
        if imgNum < 0 {
            imgNum = 2
            ImgView.image = UIImage(named:arr[imgNum])
        } else {
            ImgView.image = UIImage(named:arr[imgNum])
        }
    }
}

