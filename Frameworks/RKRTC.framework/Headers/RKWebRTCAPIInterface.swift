//
//  RKWebRTCAPIProtocol.swift
//  RKCooperationCore
//
//  Created by Rokid on 2021/12/7.
//

import UIKit

/// 成功回调
public typealias RKOnSuccess = (_ data: Any?) -> Void
/// 失败回调
public typealias RKOnFailed = (_ error: NSError?) -> Void

@objc public protocol RKRTCAPIProtocol: NSObjectProtocol {
    
    static var shared: RKRTCAPIManager! { get }
    
    /// token检验
    /// - Parameters:
    ///   - token: 频道ID
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func checkToken(token: String,
                          onSuccess: RKOnSuccess?,
                          onFailed: RKOnFailed?)
    
    /// 创建频道
    /// - Parameters:
    ///   - userIdList: 邀请的成员ID列表
    ///   - password: 频道密码，为空表示没有密码
    ///   - thirdChannelId: 三方自定义频道id，非必填
    ///   - channelName: 频道名称
    ///   - channelSubject: 频道主题
    ///   - extraParams: 拓展参数
    ///   - remark: 三方业务透传字段
    ///   - maxMembers: 频道最大成员数
    ///   - maxResolution: 最大分辨率
    ///   - bitrate: 码率， 默认200kbps
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelCreate(userIdList: [String]?,
                             password: String?,
                             thirdChannelId: String?,
                             channelName: String?,
                             channelSubject: String?,
                             extraParams: String?,
                             remark: String?,
                             maxMembers: Int32,
                             maxResolution: String,
                             bitrate: Int32,
                             onSuccess: RKOnSuccess?,
                             onFailed: RKOnFailed?)
    
    /// 加入频道
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - password: 频道密码
    ///   - sdpOffer: sdpOffer
    ///   - mediaDeviceInfo: @RKMediaDeviceInfo
    ///   - bitrate: 码率， 默认200kbps
    ///   - maxDelay: 最大延迟， 默认500ms
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelJoin(channelId: String,
                           password: String?,
                           sdpOffer: String,
                           mediaDeviceInfo: String,
                           bitrate: Int32,
                           maxDelay: Int32,
                           onSuccess: RKOnSuccess?,
                           onFailed: RKOnFailed?)
    
    /// 邀请成员
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - userIdList: 成员ID列表
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelInvite(channelId: String,
                             userIdList: [String],
                             onSuccess: RKOnSuccess?,
                             onFailed: RKOnFailed?)
    
    /// 离开频道
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelLeave(channelId: String,
                            onSuccess: RKOnSuccess?,
                            onFailed: RKOnFailed?)
    
    /// 关闭频道
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelEnd(channelId: String,
                          onSuccess: RKOnSuccess?,
                          onFailed: RKOnFailed?)
    
    /// 踢出频道成员
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - userIdList: 成员ID列表
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelKick(channelId: String,
                           userIdList: [String],
                           onSuccess: RKOnSuccess?,
                           onFailed: RKOnFailed?)
    /// 拒接
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelRefuse(channelId: String,
                             onSuccess: RKOnSuccess?,
                             onFailed: RKOnFailed?)
    
    /// 正忙
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelBusy(channelId: String,
                           onSuccess: RKOnSuccess?,
                           onFailed: RKOnFailed?)
    
    /// 设置频道参数
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - extraParams: 参数json字符串
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelSetExtraParams(channelId: String,
                                     extraParams: String,
                                     onSuccess: RKOnSuccess?,
                                     onFailed: RKOnFailed?)
    
    /// 获取频道参数
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelGetExtraParams(channelId: String,
                                     onSuccess: RKOnSuccess?,
                                     onFailed: RKOnFailed?)
    
    /// 订阅频道
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - userId: 用户id
    ///   - stram: 流类型 默认小流
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelSubscribe(channelId: String,
                                userId: String,
                                stram: RKStreamType,
                                onSuccess: RKOnSuccess?,
                                onFailed: RKOnFailed?)
    
    /// 取消订阅
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - userIdList: 成员ID列表
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelUnsubscribe(channelId: String,
                                  userIdList: [String],
                                  onSuccess: RKOnSuccess?,
                                  onFailed: RKOnFailed?)
    
    /// 大小流切换
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - userId: 成员ID列表
    ///   - isHighStram: 是否大流 默认小流
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelSwitchStream(channelId: String,
                                   userId: String,
                                   isHighStram: Bool,
                                   onSuccess: RKOnSuccess?,
                                   onFailed: RKOnFailed?)
    
    /// 更新流媒体信息
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - mediaDeviceInfo: @RKMediaDeviceInfo
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelUpdateMediaDeviceInfo(channelId: String,
                                            mediaDeviceInfo: String,
                                            onSuccess: RKOnSuccess?,
                                            onFailed: RKOnFailed?)
    
    /// 获取当前频道内成员
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelGetSpaceUserList(channelId: String,
                                       onSuccess: RKOnSuccess?,
                                       onFailed: RKOnFailed?)
    /// 获取用户正在进行的频道列表
    @objc func getChannelList(onSuccess: RKOnSuccess?,
                              onFailed: RKOnFailed?)
    
    
    /// 断线重连
    @objc func channelReconnection(channelId: String,
                                   sdpOffer: String?,
                                   subscribeUserIdList: [String],
                                   onSuccess: RKOnSuccess?,
                                   onFailed: RKOnFailed?)
    
    /// 发送频道消息
    /// - Parameters:
    ///   - channelId: 频道Id
    ///   - userIdList: 为空则发给会议内所有人（包括自己）
    ///   - sendMessageStr: 消息内容
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func sendChannelForwardMessage(channelId: String,
                                         userIdList: [String]?,
                                         sendMessageStr: String,
                                         onSuccess: RKOnSuccess?,
                                         onFailed: RKOnFailed?)
    
    /// 发起屏幕共享
    @objc func startScreenShare(channelId: String,
                                onSuccess: RKOnSuccess?,
                                onFailed: RKOnFailed?)
    
    /// 结束屏幕共享
    @objc func stopScreenShare(channelId: String,
                               onSuccess: RKOnSuccess?,
                               onFailed: RKOnFailed?)
    
    /// 获取当前正在开启的屏幕共享
    @objc func getScreenShare(channelId: String,
                              onSuccess: RKOnSuccess?,
                              onFailed: RKOnFailed?)
    
    /// 用户流配置修改
    /// - Parameters:
    ///   - channelId: 频道Id
    ///   - bitrate: 码率， 默认2000 kbps
    ///   - minDelay: 最小延迟 默认10 ms
    ///   - maxDelay: 最大延迟 默认500 ms
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelModifyStreamConfigure(channelId: String,
                                            bitrate: Int32,
                                            minDelay: Int32,
                                            maxDelay: Int32,
                                            onSuccess: RKOnSuccess?,
                                            onFailed: RKOnFailed?)
    /// 批量交换ice
    /// - Parameters:
    ///   - channelId: 频道Id
    ///   - passiveSubscribeUserId: 用户Id
    ///   - iceCandidateList: iceCandidateList
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelIceCandidate(channelId: String,
                                   passiveSubscribeUserId: String,
                                   iceCandidateList: [RKIceCandidate],
                                   onSuccess: RKOnSuccess?,
                                   onFailed: RKOnFailed?)
    /// 开启视频录制
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - resolution: 录制分辨率
    ///   - subStream: 选择录制大小流 , 默认 low
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func recordingStart(channelId: String,
                              resolution: String,
                              subStream: RKStreamType,
                              bucket: String,
                              fileName: String,
                              onSuccess: RKOnSuccess?,
                              onFailed: RKOnFailed?)
    
    /// 结束视频录制
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - save: save 是否保存视频， 默认保存视频
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func recordingEnd(channelId: String,
                            save: Bool,
                            onSuccess: RKOnSuccess?,
                            onFailed: RKOnFailed?)
    
    /// 获取会议内录制的视频列表
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - onSuccess: 成功回调 [RKRecordingFile]
    ///   - onFailed: 失败回调
    @objc func getRecordingList(channelId: String,
                                onSuccess: RKOnSuccess?,
                                onFailed: RKOnFailed?)
    
}

@objcMembers
public class RKRTCAPIManager: NSObject {}

