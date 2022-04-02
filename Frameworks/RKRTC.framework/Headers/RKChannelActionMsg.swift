//
//  RKChannelActionMsg.swift
//  RKRTC
//
//  Created by Rokid on 2022/3/7.
//

import Foundation
import RKIHandyJSON

@objcMembers
public class RKChannelActionMsg: NSObject, HandyJSON {
    // 音频
    public var operateType: RKChannelOperationType = .NONE
    // 主动操作用户
    public var activeOperateUser: String?
    // 被动操作用户
    public var passiveOperateUserList: [String]?
    // 音量
    public var mediaDeviceInfo: RKMediaDeviceInfo?
    // 频道密码
    public var password: String?
    // 频道名称
    public var channelName: String?
    // 频道主题
    public var channelSubject: String?
    // 频道拓展参数
    public var extraParams: String?
    // 频道录制参数
    public var recordParams: String?
    // 频道透传字段
    public var remark: String?
    // 频道最大成员
    public var maxMembers: Int32?
    // 拒接状态
    public var refuseState: String?
    // 频道最大分辨率
    public var maxResolution: RKMaxResolution?
    
    public func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.mediaDeviceInfo <-- TransformOf<RKMediaDeviceInfo, String>(fromJSON: { (rawString) -> RKMediaDeviceInfo? in
                return RKMediaDeviceInfo.deserialize(from: rawString)
            }, toJSON: { (tuple) -> String? in
                if let _tuple = tuple {
                    return _tuple.toJSONString()
                }
                return nil
            })
    }
    
    required public override init() {}
}
