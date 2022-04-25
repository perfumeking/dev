//
//  ViewController.swift
//  test1
//
//  Created by 박진홍 on 2022/04/24.
//

import UIKit

class ViewController: UIViewController {
    var imageNum : Int = 0
    var img1 : UIImage?
    var arr:[String?] = ["b1.jpeg","g1.jpeg","y1,jpeg"]
    @IBOutlet var viewImage: UIImageView!
    @IBOutlet var btnPrevious: UIButton!
    @IBOutlet var btnNext: UIButton!
    override func viewDidLoad() {
        img1 = UIImage(named: arr[imageNum]! )
        viewImage.image = img1
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnNextImg(_ sender: Any) {
        imageNum += 1
        if imageNum > 2 {
            imageNum = 0
            img1 = UIImage(named: arr[imageNum]!)
            viewImage.image = img1
        } else {
            img1 = UIImage(named: arr[imageNum]!)
            viewImage.image = img1
        }
    }
    @IBAction func btnPreImg(_ sender: Any) {
        imageNum -= 1
        if imageNum < 0 {
            imageNum = 2
            img1 = UIImage(named: arr[imageNum]!)
            viewImage.image = img1
        } else {
            img1 = UIImage(named: arr[imageNum]!)
            viewImage.image = img1
        }
    }
}

