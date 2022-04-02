//
//  RKCallEventHandler.swift
//  RKRTC
//
//  Created by Rokid on 2022/3/7.
//

import Foundation

@objc public protocol RKCallEventHandler: NSObjectProtocol {
        
    /// 收到呼叫
    /// - Parameters:
    ///   - userId 用户UserId
    ///   - audio true: 上传,false: 未上传
    @objc func onReceiveCall(channelId:String,channelActionMsg: RKChannelActionMsg)

}
