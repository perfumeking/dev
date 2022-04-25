//
//  ViewController.swift
//  DatePicker
//
//  Created by 박진홍 on 2022/04/24.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let currentTimeSelector: Selector = #selector(ViewController.nowTime)
    var interver = 0.1
    var sec = 1
    var count:Double = 0
    var onoff:Bool = true
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblTimer: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: interver, target: self, selector: timeSelector, userInfo: nil, repeats: onoff)
        Timer.scheduledTimer(timeInterval: TimeInterval(sec), target: self, selector: currentTimeSelector, userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let dataPickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblPickerTime.text = "선택시간: " + formatter.string(from: dataPickerView.date)
    }
    @IBAction func timerReset(_ sender: UIButton) {
        count = 0
    }
    @objc func updateTime() {
        lblTimer.text = String(format: "%.1f",count) + "초"
        count += 0.1
    }
    @objc func nowTime() {
        let date = NSDate()
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = "현재시간: " + format.string(from: date as Date)
    }
}

