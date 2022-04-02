//
//  RKRTCConfigManager.swift
//  RKRTC
//
//  Created by Rokid on 2022/2/22.
//

import Foundation

@objcMembers
public class RKRTCConfigManager: NSObject {
    
    public static var shared = RKRTCConfigManager()
    
    public var iceServers = ["stun:47.96.165.15:3478"]
    
    public var apiServer: URL?
    
    public var sessionServer: URL?
    
    public var userId: String = ""
    
    public var token: String = ""
    
    var bearer: String = "Bearer "
    
    /// 超时 30s
    public var iceConnectionTimeout: Int32 = 30000
}
