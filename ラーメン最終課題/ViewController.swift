//
//  ViewController.swift
//  ラーメン最終課題
//
//  Created by 金子雅俊 on 2020/09/20.
//  Copyright © 2020 kaneko.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        if UserDefaults.standard.object(forKey: "ranebCount") != nil{
        ramenCount = UserDefaults.standard.object(forKey: "ramenCount") as! Int
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //保存されたラーメンを食べた回数を読み込む
        if UserDefaults.standard.object(forKey: "ranebCount") != nil{
        ramenCount = UserDefaults.standard.object(forKey: "ramenCount") as! Int
        }
        
    }
  //ラーメンの食べた回数
    var ramenCount:Int = Int()
    
    
    //トップ画像
    @IBOutlet var ramenImage: UIImageView!
   
    
    //完食ボタン
    @IBAction func addButton(_ sender: Any) {
    //ラーメンを食べた回数を1増やす
        ramenCount += 1
        //ラーメンを食べた回数を保存
        UserDefaults.standard.set(ramenCount, forKey: "ramenCount")
    }
    
}


//k


