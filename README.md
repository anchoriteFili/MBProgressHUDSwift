### MBProgressHUDCustom

### 相关封装
```swift

extension MBProgressHUD {

    /* 显示动画 */
    class func showHUD() {
        let hud: MBProgressHUD = MBProgressHUD.showAdded(to: UIApplication.shared.windows.last!, animated: true)
        hud.removeFromSuperViewOnHide = true
        hud.bezelView.backgroundColor = UIColor.black
        hud.activityIndicatorColor = UIColor.white
    }

    /* 在view上显示菊花动画 */
    func showHUD(view: UIView) {
        let hud: MBProgressHUD = MBProgressHUD.showAdded(to: view, animated: true)
        hud.removeFromSuperViewOnHide = true
        hud.bezelView.backgroundColor = UIColor.black
        hud.activityIndicatorColor = UIColor.white
    }


    /* 关闭view上动画 */
    class func hideHUDForView(view: UIView) {
        hide(for: view, animated: true)
    }

    /* 关闭window上动画 */
    class func hideHUD() {
        hide(for: UIApplication.shared.windows.last!, animated: true)
    }


    /* 显示成功 */
    class func showSucess(success: String, view: UIView) {
        show(text: success, icon: "success.png", view: view)
    }

    /* window上显示成功 */
    class func showSuccess(success: String) {
        show(text: success, icon: "success.png", view: UIApplication.shared.windows.last!)
    }

    /* 显示失败 */
    class func showError(error: String, view: UIView) {
        show(text: error, icon: "error.png", view: view)
    }

    /* 显示失败 */
    class func showError(error: String) {
        show(text: error, icon: "error.png", view: UIApplication.shared.windows.last!)
    }

    /* 显示要展示的消息 */
    class func showMessage(message: String) -> MBProgressHUD {
        return MBProgressHUD.showMessage(message: message, view: UIApplication.shared.windows.last!)
    }

    /* 显示要展示的消息 */
    class func showMessage(message: String, view: UIView) ->MBProgressHUD {

        let hud: MBProgressHUD = MBProgressHUD.showAdded(to: view, animated: true)
        hud.label.text = message
        hud.contentColor = UIColor.white
        hud.removeFromSuperViewOnHide = true
        hud.bezelView.backgroundColor = UIColor.black
        hud.activityIndicatorColor = UIColor.white
        return hud
    }

    /* 私有共用方法 */
    private class func show(text: String, icon: String, view: UIView) {

        let hud: MBProgressHUD = MBProgressHUD.showAdded(to: view, animated: true)
        hud.label.text = text
        hud.contentColor = UIColor.white
        hud.customView = UIImageView.init(image: UIImage(named: "MBP_\(icon)"))
        hud.bezelView.backgroundColor = UIColor.black
        hud.mode = MBProgressHUDMode.customView
        hud.removeFromSuperViewOnHide = true
        hud.hide(animated: true, afterDelay: 1.5)
    }

}



```
