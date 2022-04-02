//
//  RKRTCChannelDelegate.swift
//  RKRTC
//
//  Created by Rokid on 2022/2/18.
//

import Foundation


@objc public protocol RKChannelEventHandler: NSObjectProtocol {
    
    /// 用户加入频道
    /// - Parameter user @RKChannelUserInfo
    @objc func onUserJoined(user: RKChannelUserInfo)
    
    /// 用户离开频道
    /// - Parameter userId 用户UserId
    @objc func onUserLeft(userId: String)
    
    /// 用户拒绝邀请
    /// - Parameter userId 用户UserId
    @objc func onUserRefused(userId: String)
    
    /// 用户正忙
    /// - Parameter userId 用户UserId
    @objc func onUserBusy(userId: String)
    
    /// 用户被踢出频道
    /// - Parameter userIds 被踢出的用户列表
    @objc func onUserKicked(userIds: [String])
    
    /// 被踢出频道
    /// - Parameter userId 用户Id
    @objc func onKicked(byUserId: String)
    
    /// 频道关闭
    /// - Parameter userId 用户Id
    @objc func onStop(byUserId: String)
    
    /// 频道消息
    /// - Parameter message 消息体
    @objc func onChannelMessageReceived(_ message: String)
    
    /// 远端用户音频上传状态变更
    /// - Parameters:
    ///   - userId 用户UserId
    ///   - audio true: 上传,false: 未上传
    @objc func onRemoteUserAudioChanged(userId: String, audio: Bool)
    
    /// 远端用户视频上传状态变更
    /// - Parameters:
    ///   - userId 用户UserId
    ///   - video true: 上传,false: 未上传
    @objc func onRemoteUserVideoChanged(userId: String, video: Bool)
    
    /// 用户开启了屏幕共享
    /// - Parameter userId 用户UserId
    @objc optional func onUserStartScreenShare(userId: String)
    
    /// 用户关闭了屏幕共享
    /// - Parameter userId 用户UserId
    @objc optional func onUserStopScreenShare(userId: String)
    
    /// 自定义属性发生了变更
    /// - Parameters:
    ///   - userId userId 修改自定义属性的用户UserId
    ///   - userId extra 修改后自定义属性内容
    @objc optional func onChannelExtraParamsChanged(userId: String?, extra: String?)
    
    /// 视频第一帧
    /// - Parameter userId 用户 id
    @objc optional func onUserFirstFrameRendered(_ userId: String)
    
    /// 用户大小流视频上传最大分辨率发生改变
    /// - Parameter userId 用户 id
    @objc optional func onUserPublishVidepSizeChanged(_ userId: String, width: Int32, height: Int32)
    
    /// video 参数回调
    @objc optional func onOutboundVideoSize(_ userId: String, width: Int32, height: Int32, fps: Int32, rid: String?)
    
    /// 频道出现异常，将释放本地频道，通知上层
    /// - Parameter errorCode 错误码
    @objc optional func onError(_ errorCode: Int)
    
}
