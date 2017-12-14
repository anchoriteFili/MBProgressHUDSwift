//
//  ViewController.swift
//  MBProgressHUDSwift
//
//  Created by zetafin on 2017/12/14.
//  Copyright © 2017年 赵宏亚. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func showSucess(_ sender: Any) {
        
        MBProgressHUD.showSuccess(success: "加载成功")
    }
    
    
    @IBAction func showSucessToView(_ sender: Any) {
        MBProgressHUD.showSucess(success: "加载成功", view: self.view)
    }
    
    
    @IBAction func showError(_ sender: Any) {
        
        MBProgressHUD.showError(error: "加载失败")
    }
    
    
    @IBAction func showErrorToView(_ sender: Any) {
        MBProgressHUD.showError(error: "加载失败", view: self.view)
    }
    
    
    @IBAction func showMessage(_ sender: Any) {
        
       let hud =  MBProgressHUD.showMessage(message: "接收到的信息")
        hud.hide(animated: true, afterDelay: 2.0)
        
    }
    
    
    @IBAction func showMessageToView(_ sender: Any) {
        
        let hud = MBProgressHUD.showMessage(message: "添加信息", view: self.view)
        hud.hide(animated: true, afterDelay: 2.0)

    }
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

