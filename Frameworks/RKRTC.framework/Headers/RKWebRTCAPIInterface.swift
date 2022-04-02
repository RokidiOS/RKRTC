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
    ///   - recordParams: 录制参数
    ///   - remark: 三方业务透传字段
    ///   - maxMembers: 频道最大成员数
    ///   - maxResolution: 最大分辨率 @ RKMaxResolution
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelCreate(userIdList: [String]?,
                             password: String?,
                             thirdChannelId: String?,
                             channelName: String?,
                             channelSubject: String?,
                             extraParams: String?,
                             recordParams: String?,
                             remark: String?,
                             maxMembers: Int,
                             maxResolution: String,
                             onSuccess: RKOnSuccess?,
                             onFailed: RKOnFailed?)
    
    /// 加入频道
    /// - Parameters:
    ///   - channelId: 频道ID
    ///   - password: 频道密码
    ///   - sdpOffer: sdpOffer
    ///   - mediaDeviceInfo: @RKMediaDeviceInfo
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelJoin(channelId: String,
                           password: String?,
                           sdpOffer: String,
                           mediaDeviceInfo: String,
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
    ///   - isHighStram: 是否大流 默认小流
    ///   - onSuccess: 成功回调
    ///   - onFailed: 失败回调
    @objc func channelSubscribe(channelId: String,
                                userId: String,
                                isHighStram: Bool,
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
    
}

@objcMembers
public class RKRTCAPIManager: NSObject {}

