//
//  ViewController.swift
//  CupRamenTimer
//
//  Created by Sakurako Shimbori on 2020/07/06.
//  Copyright © 2020 Taisei Hikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let btn1 = UIButton()
    let btn2 = UIButton()
    let btn3 = UIButton()
    let btn4 = UIButton()
    let btn5 = UIButton()
    let text1 = UILabel()
    let text2 = UILabel()
    let text3 = UILabel()
    let text4 = UILabel()
    let text5 = UILabel()
    let fontsize = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //ボタン2の設定
        self.view.addSubview(btn2)
        btn2.translatesAutoresizingMaskIntoConstraints = false
        btn2.setImage(UIImage(named: "akaikitsune"), for: .normal)
        btn2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        btn2.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -180).isActive = true
        btn2.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25).isActive = true
        btn2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.25).isActive = true
        btn2.imageView?.contentMode = .scaleAspectFit
        
        self.view.addSubview(text2)
        text2.translatesAutoresizingMaskIntoConstraints = false
        text2.text = "赤いきつね"
        text2.adjustsFontSizeToFitWidth = true
        text2.centerXAnchor.constraint(equalTo: btn2.centerXAnchor).isActive = true
        text2.topAnchor.constraint(equalTo: btn2.bottomAnchor).isActive = true
        text2.widthAnchor.constraint(equalTo: btn2.widthAnchor).isActive = true
        text2.heightAnchor.constraint(equalTo: btn2.heightAnchor, multiplier: 0.2).isActive = true
        text2.font = text2.font.withSize(CGFloat(fontsize))
        text2.textAlignment = NSTextAlignment.center
        
        //ボタン１の設定
        self.view.addSubview(btn1)
        btn1.translatesAutoresizingMaskIntoConstraints = false
        btn1.setImage(UIImage(named: "cupnudle"), for: .normal)
        btn1.rightAnchor.constraint(equalTo: btn2.leftAnchor, constant: -10).isActive = true
        btn1.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -180).isActive = true
        btn1.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25).isActive = true
        btn1.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.25).isActive = true
        btn1.imageView?.contentMode = .scaleAspectFit
        
        self.view.addSubview(text1)
        text1.translatesAutoresizingMaskIntoConstraints = false
        text1.text = "カップヌードル"
        text1.adjustsFontSizeToFitWidth = true
        text1.centerXAnchor.constraint(equalTo: btn1.centerXAnchor).isActive = true
        text1.topAnchor.constraint(equalTo: btn1.bottomAnchor).isActive = true
        text1.widthAnchor.constraint(equalTo: btn1.widthAnchor).isActive = true
        text1.heightAnchor.constraint(equalTo: btn1.heightAnchor, multiplier: 0.2).isActive = true
        text1.font = text2.font.withSize(CGFloat(fontsize))
        text1.textAlignment = NSTextAlignment.center
        
        


        //ボタン3の設定
        self.view.addSubview(btn3)
        btn3.translatesAutoresizingMaskIntoConstraints = false
        btn3.setImage(UIImage(named: "ufo"), for: .normal)
        btn3.leftAnchor.constraint(equalTo: btn2.rightAnchor, constant: 10).isActive = true
        btn3.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -180).isActive = true
        btn3.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25).isActive = true
        btn3.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.25).isActive = true
        btn3.imageView?.contentMode = .scaleAspectFit
        
        self.view.addSubview(text3)
        text3.translatesAutoresizingMaskIntoConstraints = false
        text3.text = "UFO"
        text3.adjustsFontSizeToFitWidth = true
        text3.centerXAnchor.constraint(equalTo: btn3.centerXAnchor).isActive = true
        text3.topAnchor.constraint(equalTo: btn3.bottomAnchor).isActive = true
        text3.widthAnchor.constraint(equalTo: btn3.widthAnchor).isActive = true
        text3.heightAnchor.constraint(equalTo: btn3.heightAnchor, multiplier: 0.2).isActive = true
        text3.font = text3.font.withSize(CGFloat(fontsize))
        text3.textAlignment = NSTextAlignment.center
        
        //ボタン5の設定
        self.view.addSubview(btn5)
        btn5.translatesAutoresizingMaskIntoConstraints = false
        btn5.setImage(UIImage(named: "moukotanmen"), for: .normal)
        btn5.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        btn5.topAnchor.constraint(equalTo: text2.bottomAnchor).isActive = true
        btn5.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25).isActive = true
        btn5.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.25).isActive = true
        btn5.imageView?.contentMode = .scaleAspectFit
        
        self.view.addSubview(text5)
        text5.translatesAutoresizingMaskIntoConstraints = false
        text5.text = "蒙古タンメン"
        text5.adjustsFontSizeToFitWidth = true
        text5.centerXAnchor.constraint(equalTo: btn5.centerXAnchor).isActive = true
        text5.topAnchor.constraint(equalTo: btn5.bottomAnchor).isActive = true
        text5.widthAnchor.constraint(equalTo: btn5.widthAnchor).isActive = true
        text5.heightAnchor.constraint(equalTo: btn5.heightAnchor, multiplier: 0.2).isActive = true
        text5.font = text5.font.withSize(CGFloat(fontsize))
        text5.textAlignment = NSTextAlignment.center

        //ボタン4の設定
        self.view.addSubview(btn4)
        btn4.translatesAutoresizingMaskIntoConstraints = false
        btn4.setImage(UIImage(named: "bubuka"), for: .normal)
        btn4.rightAnchor.constraint(equalTo: btn5.leftAnchor, constant: -10).isActive = true
        btn4.topAnchor.constraint(equalTo: text1.bottomAnchor).isActive = true
        btn4.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25).isActive = true
        btn4.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.25).isActive = true
        btn4.imageView?.contentMode = .scaleAspectFit
        
        self.view.addSubview(text4)
        text4.translatesAutoresizingMaskIntoConstraints = false
        text4.text = "ぶぶか"
        text4.adjustsFontSizeToFitWidth = true
        text4.centerXAnchor.constraint(equalTo: btn4.centerXAnchor).isActive = true
        text4.topAnchor.constraint(equalTo: btn4.bottomAnchor).isActive = true
        text4.widthAnchor.constraint(equalTo: btn4.widthAnchor).isActive = true
        text4.heightAnchor.constraint(equalTo: btn4.heightAnchor, multiplier: 0.2).isActive = true
        text4.font = text4.font.withSize(CGFloat(fontsize))
        text4.textAlignment = NSTextAlignment.center




    }


}

