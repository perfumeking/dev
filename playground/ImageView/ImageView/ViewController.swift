//
//  ViewController.swift
//  ImageView
//
//  Created by 박진홍 on 2022/04/24.
//

import UIKit

class ViewController: UIViewController {
    var isZoom:Bool = false
    var img1 : UIImage?
    var img2 : UIImage?
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        img1 = UIImage(named: "image1.jpeg")
        img2 = UIImage(named: "image2.jpeg")
        imgView.image = img1
        
        // Do any additional setup after loading the view.
    }


    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat,newHeight:CGFloat
        if (isZoom) {
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            btnResize.setTitle("확대", for: .normal)
        } else{
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            btnResize.setTitle("축소", for: .normal)
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = img1
        } else{
            imgView.image = img2
        }
    }
    
}
