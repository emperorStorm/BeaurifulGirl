//
//  ViewController.swift
//  BeautifulGirl
//
//  Created by mac on 16/6/17.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let images = ["范冰冰","蛯原友里","林心如","张梓琳","angelababy","swift"]

    @IBOutlet weak var pickView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Segue跳转时候调用
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //根据标识符寻找到对应的Segue
        if segue.identifier == "GoToImage" {
            //index为第一列第几行
            let index = pickView.selectedRowInComponent(0)
            //destinationViewController：获取向下跳转的controller
            let controller = segue.destinationViewController as! BeautifulViewController
            controller.imageName = images[index]
        }
    }
    
//    @IBAction func close(segue: UIStoryboardSegue) {
//        print("close")
//    }
}

extension ViewController:UIPickerViewDataSource {
    //多少列
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //每列多少行
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return images.count
    }
}

extension ViewController:UIPickerViewDelegate {
    //每行的内容
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return images[row]
    }
}



