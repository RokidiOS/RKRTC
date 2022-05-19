//
//  RKRTCChannelInterface.swift
//  RKRTC
//
//  Created by Rokid on 2022/3/8.
//

import UIKit

@objc public protocol RKRTCChannelInterface: NSObjectProtocol {
    
    /// 频道ID
    @objc var channelId: String { get }
    
    /// 频道title
    @objc var channelTitle: String { get }
    
    /// 频道成员
    @objc var channelUserList: [RKChannelUserInfo] { get }
    
    /// 是否自动订阅频道中的成员，默认不自动订阅
    @objc var autoSubscribe: Bool { get set }
    
    /// 加入频道
    @objc func join(channelId: String,
                    audio: Bool,
                    video: Bool,
                    password: String?,
                    bitrate: Int32,
                    maxDelay: Int32,
                    onSuccess: RKOnSuccess?,
                    onFailed: RKOnFailed?)
    
    /// 离开房间
    @objc func leave(_ channelId: String?,
                     onSuccess: RKOnSuccess?,
                     onFailed: RKOnFailed?)
    
    /// 邀请用户加入频道
    ///  - onSuccess:  data 返回重复邀请的用户ID
    @objc func invite(userIds: [String],
                      onSuccess: RKOnSuccess?,
                      onFailed: RKOnFailed?)
    
    /// 把用户提出频道
    @objc func kick(userIds: [String],
                    onSuccess: RKOnSuccess?,
                    onFailed: RKOnFailed?)
    
    /// 订阅视频流
    @objc func subscribe(userId: String,
                         onSuccess: RKOnSuccess?,
                         onFailed: RKOnFailed?)
    
    /// 取消订阅视频流
    @objc func unSubscribe(userList: [String],
                           onSuccess: RKOnSuccess?,
                           onFailed: RKOnFailed?)
    
    /// 用户大小流切换
    @objc func switchStream(userId: String,
                            isHighStram: Bool,
                            onSuccess: RKOnSuccess?,
                            onFailed: RKOnFailed?)
    
    /// 获取本地视频View
    @objc func getLocalVideoView(_ scaleType: RKScaleType) -> UIView?
    
    /// 获取远端用户视频View
    @objc func getRemoteVideoView(userId: String, scaleType: RKScaleType, compeletBlock: (UIView?) ->Void)
    
    /// 截图保存
    @objc func takeSnapshot(userId: String,
                            filePath: String,
                            onSuccess: RKOnSuccess?,
                            onFailed: RKOnFailed?)
    
    /// 是否上传本地音频
    @objc func publishLocalAudioStream(_ publish: Bool)
    
    /// 是否上传本地视频
    @objc func publishLocalVideoStream(_ publish: Bool)
    
    /// 监听频道事件
    @objc func setChannelEventHandler(_ channelEventHandler: RKChannelEventHandler?)
    
    /// 音视频质量数据回调
    @objc func setQualityHandler(_ qualityListener: RKAVQualityListener?)
    
    /// 设置拓展参数
    @objc func setExtraParams(_ extras: String,
                              onSuccess: RKOnSuccess?,
                              onFailed: RKOnFailed?)
    
    /// 获取拓展参数
    @objc func getExtraParams(onSuccess: RKOnSuccess?,
                              onFailed: RKOnFailed?)
    
    /// 发送频道消息给指定用户，userIdList 传空发给频道内所有用户，包括自己
    @objc func sendChannelMsg(msg: String, userIdList: [String]?)
    
    /// 开启屏幕共享
    @objc func startScreenShare(width: Int32, height: Int32, fps: Int32)
    
    /// 结束屏幕共享
    @objc func stopScreenShare()
    
    /// 获取当前频道用户列表
    @objc func getChannelUserList() -> [RKChannelUserInfo]
    
    /// 查询房间成员并订阅
    @objc func getSpaceUserList(onSuccess: RKOnSuccess?,
                                onFailed: RKOnFailed?)
    
    /// 配置视频质量（最大延迟、最大码率 kbps）
    @objc func configVideoQuality(maxPublishBitrate: Int32, maxDelay: Int32)
}

