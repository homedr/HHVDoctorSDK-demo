//
//  ViewController.swift
//  HHVDoctorSDK-demo
//
//  Created by Shi Jian on 7/5/19.
//  Copyright © 2019 shmily. All rights reserved.
//

import UIKit
import hhVDcotorSDK

let testToken = "28EDBCB5CCA747460573FAC3BF6B637D3F0D04F68EA2608F6783B874E4F50EEF"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        HHMSDK.default.login(userToken: testToken) {
//            if let error = $0 {
//                print("登录失败: \(error)")
//            } else {
//                print("登录成功")
//            }
//        }
        
        HHMSDK.default.login(uuid: 100000470) {
            if let error = $0 {
                print(error)
            } else {
                print("登录成功")
            }
        }
        
    }

    @IBAction func doStartCall(_ sender: UIButton) {
        HHMSDK.default.startCall(.child)
    }
    
    @IBAction func doJump2Medic(_ sender: Any) {
        
        let url = HHMSDK.default.getMedicList(userToken: testToken)
        let aVC = HHWebBrowser()
        aVC.urlString = url
        
        self.navigationController?.pushViewController(aVC, animated: true)
    }
    
}

