//
//  RKRTCCode.swift
//  RKRTC
//
//  Created by Rokid on 2022/2/15.
//

import Foundation
import RKIHandyJSON

@objc public enum RKRTCCode: Int, HandyJSONEnum {
    
    /// 正常
    case OK = 0
    /// SDK未初始化
    case SDK_NOT_INIT = 1
    /// 其他异常
    case OTHER_ERROR = 199
    /// 请求参数为空
    case REQUEST_PARAMS_NULL = 10001
    /// channelId为空
    case CHANNEL_ID_NULL = 10002
    /// channelId错误
    case CHANNEL_ID_ERROR = 10003
    /// 会议不存在
    case CHANNEL_IS_NOT_EXIST = 10004
    /// 用户id为空
    case USERID_IS_NULL = 10005
    /// channelSpace创建失败
    case CHANNEL_CREATE_ERROR = 10006
    /// channelSpace加入失败
    case CHANNEL_JOIN_ERROR = 10007
    /// 离开频道操作枚举有误
    case LEAVE_OPERATE_ERROR = 10008
    /// 用户已经在会议中
    case USER_EXIST_CHANNEL = 10009
    /// 用户已经被订阅，不可重复订阅
    case USER_IS_SUBSCRIBE = 10010
    /// 被订阅的用户不在会议中
    case USER_IS_NOT_CHANNEL_SPACE = 10011
    /// 频道密码错误
    case CHANNEL_PASSWORD_IS_ERROR = 10012
    /// 切换流的用户不在频道内
    case SUBSCRIBE_IS_NOT_EXIST = 10013
    /// 用户已不在频道内
    case USER_IS_NOT_EXIST_CHANNEL = 10014
    /// 频道id已存在
    case CHANNEL_ID_IS_EXIST = 10015
    /// 频道成员已满
    case CHANNEL_MEMBERS_IS_FULL = 10016
    /// 用户列表为空
    case USER_LIST_IS_EMPTY = 10017
    
}
