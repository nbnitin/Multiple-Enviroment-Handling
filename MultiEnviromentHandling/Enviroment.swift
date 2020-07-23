//
//  Enviroment.swift
//  MultiEnviromentHandling
//
//  Created by Nitin Bhatia on 07/09/19.
//  Copyright © 2019 Nitin Bhatia. All rights reserved.
//




import Foundation

public enum PlistKey {
    case Base_Url
    case Server_Url
    
    func value() -> String {
        switch self {
        case .Base_Url:
            return "Base_Url"
       
        
        case .Server_Url:
            return "Server_Url"
        }
    }
}
public struct Environment {
    
    fileprivate var infoDict: [String: Any]  {
        get {
            if let dict = Bundle.main.infoDictionary {
                return dict
            }else {
                fatalError("Plist file not found")
            }
        }
    }
    public func configuration(_ key: PlistKey) -> String {
        switch key {
        case .Base_Url:
            return infoDict[PlistKey.Base_Url.value()] as! String
        case .Server_Url:
            return infoDict[PlistKey.Server_Url.value()] as! String
        }
    }
}
