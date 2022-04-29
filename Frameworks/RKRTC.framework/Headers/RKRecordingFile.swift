//
//  RKRecordingFile.swift
//  RKRTC
//
//  Created by Amos on 2022/4/12.
//

import Foundation
import RKIHandyJSON

@objcMembers
public class RKRecordingFile: NSObject, HandyJSON {
    // 频道ID
    public var channelId: String?
    // 文件连接
    public var url: String?
    // 开始时间
    public var startTime: TimeInterval = 0
    // 结束时间
    public var endTime: TimeInterval = 0
    // 分辨率
    public var resolution: String?
    // 大小流
    public var subStream: RKStreamType?
    // 录制状态
    public var recordingState: String?
    // error时会有错误信息
    public var message: String?

    required public override init() {}
    
}
