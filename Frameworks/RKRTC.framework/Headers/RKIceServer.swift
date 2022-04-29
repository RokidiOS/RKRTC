//
//  RKIceServer.swift
//  RKRTC
//
//  Created by Amos on 2022/4/21.
//

import Foundation
@objcMembers
public class RKIceServer: NSObject {
    // 用户ID
    public var urlStrings: [String] = []
    // 用户名
    public var username: String?
    // 凭据
    public var credential: String?
    
    @objc public init(urlStrings: [String], username: String?, credential: String?) {
        super.init()
        
        self.urlStrings = urlStrings
        self.username = username
        self.credential = credential
    }
}
