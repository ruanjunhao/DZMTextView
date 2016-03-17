//
//  ViewController.swift
//  DZMTextView
//
//  Created by haspay on 16/3/17.
//  Copyright © 2016年 DZM. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {

    var inputview:DZMInputView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 用于继承修改 inset 即可 不继承可以直接使用
        inputview = DZMInputView()
        inputview.textView.placeholder = "请输入..."
        inputview.backgroundColor = UIColor.redColor()
        view.addSubview(inputview)
        inputview.textView.delegate = self
        inputview.frame = CGRectMake(10, 100, 100, inputview.height())
    }
    
    func textViewDidChange(textView: UITextView) {
        
        UIView.animateWithDuration(inputview.AnimationDuration) { [weak self]() -> Void in
            self!.inputview.frame.size = CGSizeMake(self!.inputview.frame.width, self!.inputview.height())
            
            print("输入之后高度变动inputview \(self!.inputview.changeH) 可用于操作依赖输入框view的空间")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

