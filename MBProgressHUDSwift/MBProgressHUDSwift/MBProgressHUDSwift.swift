//
//  MBProgressHUDSwift.swift
//  MBProgressHUDSwift
//
//  Created by zetafin on 2017/12/14.
//  Copyright © 2017年 赵宏亚. All rights reserved.
//

import Foundation


extension MBProgressHUD {

    // 显示成功
    class func showSucess(success: String, view: UIView) {
        show(text: success, icon: "success.png", view: view)
    }
    
    // 显示失败
    class func showError(error: String, view: UIView) {
        show(text: error, icon: "error.png", view: view)
    }
    
    // 显示要展示的消息
    class func showMessage(message: String, view: UIView) ->MBProgressHUD {
        
        let hud: MBProgressHUD = MBProgressHUD.showAdded(to: view, animated: true)
        hud.label.text = message
        hud.removeFromSuperViewOnHide = true
        hud.backgroundColor = UIColor.gray
        return hud
    }
    
    // window上显示成功
    class func showSuccess(success: String) {
        show(text: success, icon: "success.png", view: UIApplication.shared.windows.last!)
    }
    
    class func showError(error: String) {
        show(text: error, icon: "error.png", view: UIApplication.shared.windows.last!)
    }
    
    // 显示要展示的消息
    class func showMessage(message: String) -> MBProgressHUD {

        return MBProgressHUD.showMessage(message: message, view: UIApplication.shared.windows.last!)
    }
    
    
    // 关闭view上动画
    class func hideHUDForView(view: UIView) {
        hide(for: view, animated: true)
    }
    
    // 关闭window上动画
    class func hideHUD() {
        hideHUD()
    }
    
    class func show(text: String, icon: String, view: UIView) {
        
//        showAdded(to: view, animated: true)
        
        let hud: MBProgressHUD = MBProgressHUD.showAdded(to: view, animated: true)
        
        hud.label.text = text
        hud.customView = UIImageView.init(image: UIImage(named: "MBP_\(icon)"))
        hud.mode = MBProgressHUDMode.customView
        hud.removeFromSuperViewOnHide = true
        hud.hide(animated: true, afterDelay: 1.5)
    }
    
}
