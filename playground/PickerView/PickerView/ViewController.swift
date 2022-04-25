//
//  ViewController.swift
//  PickerView
//
//  Created by 박진홍 on 2022/04/25.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    let maxArrayN = 6
    let pickerViewColumn = 1
    var imageFile = ["IMG_5576.jpeg","IMG_5593.jpeg","IMG_5594.jpeg","IMG_5600.jpeg","IMG_5617.jpeg","IMG_5629.jpeg",]
    var imgArr = [UIImage?]()
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var UIImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0 ..< maxArrayN {
            imgArr.append(UIImage(named: imageFile[i]))
        }
        lblImageFileName.text = imageFile[0]
        UIImageView.image = imgArr[0]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return pickerViewColumn
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFile.count
    }
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imageFile[row]
//    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIKit.UIImageView(image:imgArr[row])
        imageView.frame = CGRect(x:0,y:0,width:100,height:150)
        return imageView
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = imageFile[row]
        UIImageView.image = imgArr[row]
    }
}

