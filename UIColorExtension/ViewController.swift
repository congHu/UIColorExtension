//
//  ViewController.swift
//  UIColorExtension
//
//  Created by David on 16/6/28.
//  Copyright © 2016年 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var scrollView:UIScrollView!
    var colorViews:[UIView!] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 20, width: view.frame.width, height: view.frame.height-20))
        view.addSubview(scrollView)
        for i in 0..<8{
            colorViews.append(UIView(frame: CGRect(x: 8, y: CGFloat(i)*53+20, width: view.frame.width-16, height: 45)))
            scrollView.addSubview(colorViews.last!)
        }
        demoOfUIColor()
        
    }

    func demoOfUIColor(){
        
        //UIColor.blackColor()
        //直接返回黑色。还有whiteColor()、redColor()等等
        colorViews[0].backgroundColor = UIColor.blackColor()
        
        //UIColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
        //RGBA构造颜色。他们的数值是0到1的CGFloat浮点数，1.0对应的值是255.0
        colorViews[1].backgroundColor = UIColor(red: 123.0/255.0, green: 100.0/255.0, blue: 45.0/255.0, alpha: 1.0)
        
        //UIColor(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
        //HSB构造颜色，每个都是0到1的浮点数
        colorViews[2].backgroundColor = UIColor(hue: 0.5, saturation: 0.5, brightness: 0.5, alpha: 1)
        
        //UIColor(white: CGFloat, alpha: CGFloat)
        //灰度构造颜色，同样是0到1的浮点数，越大灰色越浅，越小灰色越深。当alpha为(1完全不透明),0是黑色，1是白色
        colorViews[3].backgroundColor = UIColor(white: 0.8, alpha: 1)
        
        //UIColor(white: CGFloat, alpha: CGFloat)
        //运用这个构造函数，令alpha=0，还可以精简地生成一个全透明的无色(注: 不是白色，是透明色)
        colorViews[4].backgroundColor = UIColor(white: 1, alpha: 0)
        
        //导入HexColorExtension.swift到工程里，可以使用
        
        //UIColor(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat)
        //直接使用0到255的数值
        colorViews[5].backgroundColor = UIColor(r: 123, g: 100, b: 45, a: 255)
        
        //UIColor(hex: String)
        //用16进制构造颜色
        colorViews[6].backgroundColor = UIColor(hex: "1c71ca")
        
        //UIColor(hex: String)
        //用8位16进制构造颜色
        colorViews[7].backgroundColor = UIColor(hex: "1c71ca80")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
