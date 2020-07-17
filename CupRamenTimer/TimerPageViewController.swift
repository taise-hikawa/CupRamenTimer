//
//  TimerPageViewController.swift
//  CupRamenTimer
//
//  Created by Sakurako Shimbori on 2020/07/15.
//  Copyright © 2020 Taisei Hikawa. All rights reserved.
//

import UIKit

class TimerPageViewController: UIViewController {
    //タイマーを表示するラベルの定義
    let timerLabel = UILabel()
    //タイマーの定義
    var timer : Timer?
    //カウントを２つ用意
    var count = 0
    var count2 = 0.0
    let settingKey = "timer_value"
    var timerValue = 0
    //円のイメージビューを定義
    var circle :UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //viewの背景を設定
        self.view.backgroundColor? = UIColor(patternImage: UIImage(named: "mokume")!)
        //タイマーラベルの設定
        self.view.addSubview(timerLabel)
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        timerLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        timerLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
        let settings = UserDefaults.standard
        timerValue = settings.integer(forKey: settingKey)
        //時間を分と秒に分けタイマーラベルのテキストに設定
        timerLabel.text = timerUnit(time: timerValue)
        timerLabel.font = timerLabel.font.withSize(40)
        //1秒おきにtimerInterrupt関数を呼び出しタイマーのカウントを行う
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.timerInterrupt(_:)), userInfo: nil, repeats: true)
        //円を表示
        let circleImage = makeCiracle(currentTime: Double(timerValue), maxTime: Double(timerValue))
        circle = UIImageView(image:circleImage)
        self.view.addSubview(circle)
        //0.05秒ずつupdateCircle関数を呼び出し、円を動的に描写
        timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(self.updateCircle(_:)), userInfo: nil, repeats: true)
    }
    
    @objc func timerInterrupt(_ timer:Timer){
        //経過時間に１足してく
        count += 1;
        
        //残り時間が０以下の時に、タイマーを止める
        if displayUpdate() <= 0{
            //初期化
            count = 0
            //タイマー停止
            timer.invalidate()
            
            //ダイアログを作成
            let alertController = UIAlertController(title: "終了", message: "出来上がりました！", preferredStyle: .alert)
            //ダイアログに表示させるOKボタンを作成
            let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            //アクションを追加
            alertController.addAction(alertAction)
            //ダイアログの表示
            present(alertController, animated: true, completion: nil)
        }
        
    }
    func displayUpdate() -> Int{
        //残り時間(remainCount)を生成
        let remainCount = timerValue - count
        //remainCount(残り時間)をラベルに表示
        timerLabel.text = timerUnit(time: remainCount)
        //残り時間を戻り値に設定
        return remainCount
    }
    
    //時間を分と秒に分けStringで返す関数
    func timerUnit(time :Int) -> String{
        let minute :Int
        let second :Int
        minute = time/60
        second = time % 60
        let sMinute = String(format:"%02d", minute)
        let sSecond = String(format:"%02d", second)
        return "\(sMinute):\(sSecond)"
        
    }
    //0.05秒ずつ円を動的に描写する関数
    @objc func updateCircle(_ timer:Timer) -> Void {
        count2 += 0.05
        //円を消す
        circle.removeFromSuperview()
        //残り時間(remainCount)を生成
        let remainCount = Double(timerValue) - count2
        //makeCircle関数で現在の残り時間の円を作成
        let circleImage = makeCiracle(currentTime: remainCount, maxTime: Double(timerValue))
        circle = UIImageView(image:circleImage)
        //円を表示
        self.view.addSubview(circle)
        //残り時間が0秒以下で円の動的な描写を停止
        if remainCount <= 0{
            count2 = 0
            timer.invalidate()
            circle.removeFromSuperview()
            
        }
        
        
    }
    //現在時間とトータル時間を取得し、残り時間の割合を円で返す関数
    func makeCiracle(currentTime :Double, maxTime :Double) -> UIImage{
        //描画サイズ
        UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, false, 1.0)
        //円弧のパスを作成
        let arcPath = UIBezierPath(arcCenter: self.view.center, radius: (self.view.frame.width/2)-5,  startAngle: CGFloat((2*Double.pi*(currentTime/maxTime))-(0.5*Double.pi)),endAngle: CGFloat(-0.5*Double.pi), clockwise: false)
        arcPath.lineWidth = 10
        arcPath.stroke()
        
        //イメージコンテキストからUIImageを作成
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //イメージ処理の終了
        UIGraphicsEndImageContext()
        return image!
        
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
