//
//  ViewController.swift
//  HHVDoctorSDK-demo
//
//  Created by Shi Jian on 7/5/19.
//  Copyright © 2019 shmily. All rights reserved.
//

import UIKit
import hhVDoctorSDK
import FileBrowser
import SVProgressHUD

let testToken = "28EDBCB5CCA747460573FAC3BF6B637D3F0D04F68EA2608F6783B874E4F50EEF"

class ViewController: UIViewController {

    @IBOutlet weak var mInputTxt: UITextView!
    @IBOutlet weak var mDescLbl: UILabel!
    
    @IBOutlet weak var mCallBtn: UIButton!
    @IBOutlet weak var mMedicBtn: UIButton!
    @IBOutlet weak var mAllMedicBtn: UIButton!
    
    @IBOutlet weak var mLoginBtn: UIButton!
    
    @IBAction func doStartCall(_ sender: UIButton) {
        HHMSDK.default.startCall(.child)
    }
    
    @IBAction func doJump2Medic(_ sender: Any) {
        let url = HHMSDK.default.getMedicList(userToken: mInputTxt.text ?? "")
        let aVC = HHWebBrowser()
        aVC.urlString = url
        
        self.navigationController?.pushViewController(aVC, animated: true)
    }
    
    @IBAction func doJumpAllMedic(_ sender: Any) {
        let url = HHMSDK.default.getAllMedics(userToken: mInputTxt.text ?? "")
        let aVC = HHWebBrowser()
        aVC.urlString = url
        
        self.navigationController?.pushViewController(aVC, animated: true)
    }
    
    
    @IBAction func doChangeEnv(_ sender: UISegmentedControl) {
        HHMSDK.default.switchEnv(sender.selectedSegmentIndex == 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HHMSDK.default.add(delegate: self)
    }
    
    @IBAction func doLoginIn(_ sender: UIButton) {
        mDescLbl.text = "准备开始登录"
        let aToken = mInputTxt.text ?? ""
        self.view.endEditing(true)
        
        HHMSDK.default.login(userToken: aToken) { [weak self] in
            if let error = $0 {
                self?.mDescLbl.text = error
            } else {
                
                SVProgressHUD.showSuccess(withStatus: "登录成功")
                
                self?.mDescLbl.text = "登录成功"
                
                self?.mLoginBtn.isHidden = true
                self?.mCallBtn.isHidden = false
                self?.mMedicBtn.isHidden = false
                self?.mAllMedicBtn.isHidden = false
            }
        }
    }
    
    @IBAction func doLogout(_ sender: UIBarButtonItem) {
        HHMSDK.default.logout { [weak self] (error) in
            if let aError = error {
                print("退出失败：" + aError)
            } else {
                print("退出成功")
                SVProgressHUD.showSuccess(withStatus: "退出成功")
                self?.mLoginBtn.isHidden = false
                self?.mCallBtn.isHidden = true
                self?.mMedicBtn.isHidden = true
                self?.mAllMedicBtn.isHidden = true
            }
        }
        
        mDescLbl.text = "已退出登录"
    }
    
    @IBAction func doCheckLogs(_ sender: UIBarButtonItem) {
        present(FileBrowser(), animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

extension ViewController: HHMVideoDelegate {
    
    func onForceOffline() {
        SVProgressHUD.showError(withStatus: "用户被强制下线")
        
    }
    
//    func onFail(_ errorCode: Int32, errrorStr: String?) {
//        print("---- onFail :\(errorCode), \(errrorStr)")
//    }
//
//    func onFail(error: Error) {
//        print("---- error: \(error.localizedDescription)")
//    }
//
//    func onCancel() {
//        print("----- onCancel")
//    }
//
//    func callDidFinish() {
//        print("---- callDidFinish")
//    }
//
//    func onExtensionDoctor() {
//        print("---- onExtensionDoctor")
//    }
//
//    func onReceive(_ callID: String) {
//        print("---- onReceive:\(callID)")
//    }
//
//    func onResponse(_ accept: Bool) {
//        print("---- onResponse:\(accept)")
//    }
//
//    func onLeakPermission(_ type: PermissionType) {
//        print("---- onLeakPermission:\(type)")
//    }
//
//    func callDidEstablish() {
//        print("----- callDidEstablish")
//    }
//
//    func callStateChange(_ state: HHMCallingState) {
//        print("------- callStateChange\(state)")
//    }
    
    
}
