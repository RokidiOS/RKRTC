//
//  RKWebRTCInterface.swift
//  RKRTC
//
//  Created by Rokid on 2022/3/4.
//

import Foundation

@objc public protocol RKWebRTCInterface: NSObjectProtocol {
    
    // 是否自动订阅频道中的用户
    var autoSubscribe: Bool { get set }
    
    /// 设备
    var rtcDevice: RKMediaDevice { get }
    
    /// 频道
    var rtcChannel: RKRTCChannel { get }
    
    /// 登录
    /// - Parameters:
    ///   - saasUrl: saas地址
    ///   - wssUrl: websocket地址
    ///   - userId: 用户token
    ///   - token: 用户token
    @objc func login(saasUrl: String,
                     wssUrl: String,
                     userId: String,
                     token: String,
                     onSuccess: RKOnSuccess?,
                     onFailed: RKOnFailed?)
    
    /// 开/关 Camera采集
    @objc func enableCamera(_ enableCamera: Bool)
    
    /// 切换摄像头
    @objc func switchCamera()
    
    /// 设置是否打开闪光灯
    @objc func setCameraTorchOn(_ isOn: Bool,
                                onSuccess: RKOnSuccess?,
                                onFailed: RKOnFailed?)
    
    /// 设置音频路由设备
    @objc func setAudioRouteSpeakerphone(_ speakerphone: Bool)
    
    /// 开/关 Audio采集
    @objc func enableAudio(_ enableAudio: Bool)
    
    /// 挂断邀请
    @objc func refuse(_ channelId: String,
                      onSuccess: RKOnSuccess?,
                      onFailed: RKOnFailed?)
    
    /// 设置视频流上传参数 ， fps 默认15
    @objc func setPublishResolution(width: Int32, height: Int32, fps: Int32)
    
    /// 结束、退出频道
    @objc func dissolutionChannel(_ channelId: String,
                                  onSuccess: RKOnSuccess?,
                                  onFailed: RKOnFailed?)
    /// 添加监听WebSocket连接状态
    @objc func addRtcClientListener(_ listener: RKRtcClientListener)
    
    /// 移除监听WebSocket连接状态
    @objc func removeRtcClientListener(_ listener: RKRtcClientListener)
    
    /// 添加被叫监听
    @objc func addCallEventHandler(_ listener: RKCallEventHandler)
    
    /// 移除被叫监听
    @objc func removeCallEventHandler(_ listener: RKCallEventHandler)
    
    /// 自定义视频源
    @objc func setVideoSource(_ source: RKVideoSource)
    
    @objc func stopVideoSource()
    
    /// 自定义音频源
    @objc func setAudioSource(_ source: RKAudioSource)
    
    /// 设置音量 [0 - 10]
    @objc func adjustPlaybackVolume(_ volume: Double)
    
    /// 获取当前用户已加入频道  成功回调 @[RKJoinedChannel]
    @objc func findJoinedChannel(onSuccess: RKOnSuccess?,
                                 onFailed: RKOnFailed?)
    
    /// 对焦 xPercent 归一化坐标  yPercent 归一化坐标
    @objc func focus(xPercent: Float, yPercent: Float)
    
    ///  离开频道， 用于离开登录返回的已经在的频道
    /// - Parameter channelId 频道ID
    @objc func leave(channelId: String)
    
    /// 释放SDK，释放后需要走完整的SDK初始化登录流程
    @objc func dispose()
    
}

