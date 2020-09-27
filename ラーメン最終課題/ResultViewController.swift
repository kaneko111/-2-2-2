//
//  ResultViewController.swift
//  ラーメン最終課題
//
//  Created by 金子雅俊 on 2020/09/20.
//  Copyright © 2020 kaneko.com. All rights reserved.
//

import UIKit


class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //らーめんを食べた回数
    var ramenCount:Int = 0
    //比較画像の配列番号
    var dispImageNum:Int = 0
    //比較画像の配列
    let imageArray = ["r1","r2","r3","r4","r5","r6","r7","r8","r9","r10","r11","r12","r13","r14","r15","r16","r17","r18","r19","r20","r21","r22","r23","r24","r25","r26","r27","r28","r29","r30"]

    override func viewWillAppear(_ animated: Bool) {
        //ラーメンを食べた回数を読み込む
        if UserDefaults.standard.object(forKey: "ramenCount") != nil{
        ramenCount = UserDefaults.standard.object(forKey: "ramenCount") as! Int
        }
        //今までラーメンを食べた回数を表示
        showRamenCount()
        //今まで食べたラーメンの長さを表示
        showRamenLength()
        //比較画像を表示
        dispImage()
    }
    //ラーメンを食べるボタン
    @IBAction func eatButton(_ sender: Any) {
        //画面を戻る
        self.dismiss(animated: true, completion: nil)

    }
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var ramenCountLabel: UILabel!
    
    @IBOutlet var kyoriLabel: UILabel!
    
    @IBOutlet var ramenLenghtLabel: UILabel!
    
    @IBOutlet var imageLabel: UIImageView!
        
//ラーメンを食べた回数を表示するメソッド
    func showRamenCount(){
        //ラーメンを食べた回数を読み込む
        if UserDefaults.standard.object(forKey: "ramenCount") != nil{
               ramenCount = UserDefaults.standard.object(forKey: "ramenCount") as! Int
               }
        //Int型をStringに変える
        let ramenCountString:String = String(ramenCount)
        //食べた回数を表示
        ramenCountLabel.text = "\(ramenCountString)杯"
        
    }
    //今まで食べたラーメンの長さを表示するメソッド
    func showRamenLength(){
        //ラーメンを食べた回数を読み込む
        if UserDefaults.standard.object(forKey: "ramenCount") != nil{
               ramenCount = UserDefaults.standard.object(forKey: "ramenCount") as! Int
               }
        //ラーメンの長さ = ラーメン完食した回数 × 60
        let ramenLength = 60 * ramenCount
        //ラーメンの長さをIntからStirngに変換
        let ramenLengthString:String = String(ramenLength)
        
        //ラーメンの長さをラベルに表示 M()
        ramenLenghtLabel.text = "約\(ramenLengthString)M"

    }
    //比較イメージを表示
    func dispImage() {
        //ラーメンの食べた回数を読み込む
        if UserDefaults.standard.object(forKey: "ramenCount") != nil{
               ramenCount = UserDefaults.standard.object(forKey: "ramenCount") as! Int
               }
        
        if UserDefaults.standard.object(forKey: "dispImage") != nil {
            dispImageNum = UserDefaults.standard.object(forKey: "dispImage") as! Int
        }
        //ラーメンの食べた回数に応じて比較画像の配列番号を+1する
        if (ramenCount == 1){
            dispImageNum = 0
        }else if(ramenCount == 2){
            dispImageNum += 1
        }else if(ramenCount == 3){
            dispImageNum += 1
        }else if(ramenCount == 4){
            dispImageNum += 1
        }else if(ramenCount == 5){
            dispImageNum += 1
        }else if(ramenCount == 6){
        dispImageNum += 1
        }else if(ramenCount == 7){
        dispImageNum += 1
        }else if(ramenCount == 8){
        dispImageNum += 1
        }else if(ramenCount == 9){
        dispImageNum += 1
        }else if(ramenCount == 10){
        dispImageNum += 1
        }else if(ramenCount == 11){
        dispImageNum += 1
        }else if(ramenCount == 12){
        dispImageNum += 1
        }else if(ramenCount == 13){
        dispImageNum += 1
        }else if(ramenCount == 14){
        dispImageNum += 1
        }else if(ramenCount == 15){
        dispImageNum += 1
        }else if(ramenCount == 16){
        dispImageNum += 1
        }else if(ramenCount == 17){
        dispImageNum += 1
        }else if(ramenCount == 18){
        dispImageNum += 1
        }else if(ramenCount == 19){
        dispImageNum += 1
        }else if(ramenCount == 20){
        dispImageNum += 1
        }else if(ramenCount == 21){
        dispImageNum += 1
        }else if(ramenCount == 22){
        dispImageNum += 1
        }else if(ramenCount == 23){
        dispImageNum += 1
        }else if(ramenCount == 24){
        dispImageNum += 1
        }else if(ramenCount == 25){
        dispImageNum += 1
        }else if(ramenCount == 26){
        dispImageNum += 1
        }else if(ramenCount == 27){
        dispImageNum += 1
        }else if(ramenCount == 28){
        dispImageNum += 1
        }else if(ramenCount == 29){
        dispImageNum += 1
        }else if(ramenCount == 30){
        dispImageNum += 1
        }
        else{
            print(dispImageNum)
        }
        //比較画像の配列番号を保存
        UserDefaults.standard.set(dispImageNum, forKey: "dispImage")
        
        //配列と配列番号を読み込む
        let name = imageArray[dispImageNum]
        let image = UIImage(named : name)
        //比較画像を表示する
        imageLabel.image = image
        
        }
    
   
    
    @IBAction func shareButton(_ sender: Any) {
    
        // 共有する項目
          let shareText = "ラーメン啜りカウンターアプリ!!"
        
        let shareLabel = titleLabel.text!
        
       let shareLabel02 = ramenCountLabel.text!

        let shareLabel03 = kyoriLabel.text!

        let shareLabel04 = ramenLenghtLabel.text!

      let shareImage = imageLabel.image!

        let activityItems = [shareText,shareLabel
            ,shareLabel02,shareLabel03,shareLabel04,shareImage
            ] as [Any]

        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)


          // 使用しないアクティビティタイプ
          let excludedActivityTypes = [
         UIActivity.ActivityType.postToFacebook,
//          UIActivity.ActivityType.postToTwitter,
         UIActivity.ActivityType.message,
        UIActivity.ActivityType.saveToCameraRoll,
        UIActivity.ActivityType.print,
        UIActivity.ActivityType.addToReadingList,
        UIActivity.ActivityType.airDrop,
        UIActivity.ActivityType.assignToContact,
        UIActivity.ActivityType.copyToPasteboard,
        UIActivity.ActivityType.mail]

        activityVC.excludedActivityTypes = excludedActivityTypes
    
    
    // UIActivityViewControllerを表示
    self.present(activityVC, animated: true, completion: nil)
    
    }
}
