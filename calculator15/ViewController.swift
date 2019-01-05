//
//  ViewController.swift
//  calculator15
//
//  Created by s20171106578 on 2018/11/15.
//  Copyright © 2018 s20171106578. All rights reserved.
//  2018 11 16 @张欣鹏 s20171106578 计算器基本模型 加减乘除开根号

import UIKit
class ViewController: UIViewController {
    var temp:Double = 0                        //定义double类型变量
    var temp2:Double = 0
    var operatorFlag = 0                       //定义变量
    var operatorFlag2 = 0
    @IBOutlet var result: UITextField!         //输出框 text，outlet类型，名字自定义
    @IBAction func button1(_ sender: Any) {    //按钮 button action类型
        result.text = result.text! + "1"       //button1按钮实现输入1，下面以此类推
    }
    @IBAction func button2(_ sender: Any) {    //button1按钮实现输入2
        result.text = result.text! + "2"
    }
    @IBAction func button3(_ sender: Any) {    //button1按钮实现输入3
        result.text = result.text! + "3"
    }
    @IBAction func button4(_ sender: Any) {   //button1按钮实现输入4
        result.text = result.text! + "4"
    }
    @IBAction func button5(_ sender: Any) {    //button1按钮实现输入5
        result.text = result.text! + "5"
    }
    @IBAction func button6(_ sender: Any) {
        result.text = result.text! + "6"
    }
    @IBAction func button7(_ sender: Any) {
        result.text = result.text! + "7"
    }
    @IBAction func button8(_ sender: Any) {
        result.text = result.text! + "8"
    }
    @IBAction func button9(_ sender: Any) {
        result.text = result.text! + "9"
    }
    @IBAction func button0(_ sender: Any) {
        result.text = result.text! + "0"
    }
    @IBAction func buttonAC(_ sender: Any) {     //button1按钮实现输入“”意为AC
        result.text = ""
    }
    @IBAction func buttondot(_ sender: Any) {    //button1按钮实现输入“点”
        result.text = result.text! + "."
    }
    @IBAction func buttonAdd(_ sender: Any) {    //按钮➕
        temp = Double(result.text!)!             //temp=Double类型转换赋值
        if operatorFlag2 == 0                    //if语句判断是否实现连加，operatgorFlag2等于几是判断连加if语句的条件
        {
            temp2 = temp
        }
        result.text = ""                         //清空输出框
        operatorFlag = 1                         //switch语句判断operatorFlag = 1，operatorFlag2 = 1，operatorFlag = 0
        if (operatorFlag2 != 0)
        {
            temp = temp + temp2
        }
        operatorFlag2 = 1 + operatorFlag2
    }
    @IBAction func buttonSub(_ sender: Any) {
        temp = Double(result.text!)!
        if operatorFlag2 == 0
        {
            temp2 = temp
        }
        result.text = ""
        operatorFlag = 2
        if operatorFlag2 != 0
        {
            temp = temp - temp2
        }
        operatorFlag2 = 1 + operatorFlag2
    }
    @IBAction func buttonDivi(_ sender: Any) {
        temp = Double(result.text!)!
        if operatorFlag2 == 0
        {
            temp2 = temp
        }
        result.text = ""
        operatorFlag = 3
        if operatorFlag2 != 0
        {
            temp = temp * temp2
        }
        operatorFlag2 = 1 + operatorFlag2
    }
    @IBAction func buttonMult(_ sender: Any) {
        temp = Double(result.text!)!
        if operatorFlag2 == 0
        {
            temp2 = temp
        }
        result.text = ""
        operatorFlag = 4
        if operatorFlag2 != 0
        {
            temp = temp / temp2
        }
        operatorFlag2 = 1 + operatorFlag2
    }
    @IBAction func buttonsqrt(_ sender: Any) {     //sqrt开平方函数，resyhlt.text = "\(temp)"意为输出temp的值在文本框中
        temp = Double(result.text!)!
        temp = sqrt(temp)
        result.text = "\(temp)"
    }
    @IBAction func buttonResult(_ sender: Any) {  //buttonResult，switch OperatorFlag case1,case2,case3,case4,defaault braek;意为退出switch语句
        switch operatorFlag{
        case 1:
            if (operatorFlag2 == 1)                     //if语句判断operatorFlag2 g是否等于1
            {
                temp = temp + Double(result.text!)!     //连加程序temp = temp + Double（result.text!)!
                result.text = "\(temp)"                 //输出temp的值
                operatorFlag2 = 0                       //清空operatorFlag的值
            }else{                                      //else语句判断
                temp2 = temp2 + Double(result.text!)!   //temp2 = temp2 + Double(result.text!)!
                result.text = "\(temp2)"                //输出temp2的值
                operatorFlag2 = 0                       //清空operatorFlag2的值
            }
        case 2:
            if (operatorFlag2 == 1)
            {
                temp = temp - Double(result.text!)!
                result.text = "\(temp)"
                operatorFlag2 = 0
            }else{
                temp2 = temp2 - Double(result.text!)!
                result.text = "\(temp2)"
                operatorFlag2 = 0
            }
        case 3:
            if (operatorFlag2 == 1)
            {
                temp = temp * Double(result.text!)!
                result.text = "\(temp)"
                operatorFlag2 = 0
            }else{
                temp2 = temp2 * Double(result.text!)!
                result.text = "\(temp2)"
                operatorFlag2 = 0
            }
        case 4:
            if (operatorFlag2 == 1)
            {
                temp = temp / Double(result.text!)!
                result.text = "\(temp)"
                 operatorFlag2 = 0
            }else{
                temp2 = temp2 / Double(result.text!)!
                result.text = "\(temp2)"
                operatorFlag2 = 0
            }
        default: break                          //dafault: break 结束switch语句
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
