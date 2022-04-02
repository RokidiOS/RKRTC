//
//  RKRtcClientListener.swift
//  RKRTC
//
//  Created by Rokid on 2022/3/4.
//

import Foundation

@objc public protocol RKRtcClientListener: NSObjectProtocol {
    
    /// 连接成功
    @objc func onRtcClientConnected()
    
    /// 连接关闭
    @objc func onRtcClientClosed()
    
    /// 连接出错
    @objc func onRtcClientError(_ errorCode: NSError?)
    
    /// rtc 登录被踢
    @objc func onRtcClientKicked()
    
    /// 登录回调用户已经加入的频道
    @objc func onJoinedChannelList(_ channelList: [RKJoinedChannel]?)
    
}
