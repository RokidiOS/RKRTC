//
//  RKChannelUserInfo.swift
//  RKRTC
//
//  Created by Rokid on 2022/02/17.
//

import Foundation
import RKIHandyJSON

@objcMembers
public class RKChannelUserInfo: NSObject, HandyJSON {
    // 用户ID
    public var userId: String = ""
    // 查询媒体资源信息
    public var mediaDeviceInfo: RKMediaDeviceInfo?
    
    required public override init() {}
    
}
