//
//  RKWSEnum.swift
//  RKRTC
//
//  Created by Rokid on 2022/2/16.
//

import RKIHandyJSON

/// 消息类型
public enum RKWSMessageType: String, HandyJSONEnum {
    /// 长连接心跳
    case HEARTBEAT
    /// 消息通知（邀请、加入、离开、踢出、结束）
    case CHANNEL_ACTION
    /// 频道消息转发
    case FORWARD
    /// 媒体建立协议请求
    case ICE_CANDIDATE
    /// 媒体资源修改转发消息
    case MEDIA_DEVICE
    ///  自定义属性发生变化
    case EXTRA_PARAMS
    ///  推流成功消息通知
    case AGAIN_SUBSCRIBE
    ///  屏幕共享消息通知
    case SCREEN_SHARE
    ///  socket相关
    case SOCKET
}

/// 消息通知
@objc public enum RKChannelOperationType: Int, HandyJSONEnum {
    
    /// 未知状态
    case NONE
    /// 创建会议
    case CREATE
    /// 邀请人员进入会议
    case INVITE
    /// 加入会议
    case JOIN
    /// 离开会议
    case LEAVE
    /// 踢出会议内成员
    case KICK
    /// 拒接会议
    case REFUSE
    /// 结束会议
    case END
    
    public typealias RawValue = String
    
    public var rawValue: RawValue {
        switch self {
        case .NONE: return "NONE"
        case .CREATE: return "CREATE"
        case .INVITE: return "INVITE"
        case .JOIN: return "JOIN"
        case .LEAVE: return "LEAVE"
        case .KICK: return "KICK"
        case .REFUSE: return "REFUSE"
        case .END: return "END"
        }
    }
    
    public init?(rawValue: RawValue) {
        switch rawValue {
        case "CREATE": self = .CREATE
        case "INVITE": self = .INVITE
        case "JOIN": self = .JOIN
        case "LEAVE": self = .LEAVE
        case "KICK": self = .KICK
        case "REFUSE": self = .REFUSE
        case "END": self = .END
        default: self = .NONE
        }
    }
    
}

/// RTCClient state
@objc public enum RKRTCConnectionState: NSInteger, HandyJSONEnum {
    case New
    case Checking
    case Connected
    case Completed
    case Failed
    case Disconnected
    case Closed
    case Count
}

@objc public enum RKScaleType: Int32, HandyJSONEnum {
    /// 适合
    case SCALE_ASPECT_FIT = 0
    /// 填充、拉伸
    case SCALE_ASPECT_FILL
    /// 平衡
    case SCALE_ASPECT_BALANCED
}


// MARK: - channel

/// 分辨率 支持 256x144, 512x288, 640x360, 854x480, 1280x720, 1920x1080

public enum RKMaxResolution: String, HandyJSONEnum {
    /// 256x144
    case Resolution_144P = "144P"
    /// 512x288
    case Resolution_288P = "288P"
    /// 640x360
    case Resolution_360P = "360P"
    ///  854x480
    case Resolution_480P = "480P"
    /// 1280x720
    case Resolution_720P = "720P"
    /// 1920x1080
    case Resolution_1080P = "1080P"
}

@objc public enum RKVideoRotation: NSInteger, HandyJSONEnum {
    case VideoRotation_0 = 0
    case VideoRotation_90 = 90
    case VideoRotation_180 = 180
    case VideoRotation_270 = 270
}

@objc public enum RKVideoFormat: NSInteger, HandyJSONEnum {
    case I420 = 1
    case IYUV = 2
    case RGB24 = 3
    case ABGR = 4
    case ARGB = 5
    case ARGB444 = 6
    case RGB565 = 7
    case ARGB1555 = 8
    case YUY2 = 9
    case YV12 = 10
    case UYVY = 11
    case MJPG = 12
    case NV21 = 13
    case NV12 = 14
    case BGRA = 15
    case H264 = 16
    case H264_SVC = 17
}

@objc public enum RKSocketCode: Int, HandyJSONEnum {
    /// 重复登录的消息，服务端只发送消息不主动断开连接，被T
    case relogin = 20001
}

