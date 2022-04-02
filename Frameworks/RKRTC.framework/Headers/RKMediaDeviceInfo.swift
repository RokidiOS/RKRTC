//
//  RKMediaDeviceInfo.swift
//  RKRTC
//
//  Created by Rokid on 2022/2/25.
//

import Foundation
import RKIHandyJSON

@objcMembers
public class RKMediaDeviceInfo: NSObject, HandyJSON {
    // 音频
    public var audio: Bool = true
    // 视频
    public var video: Bool = true
    // 网络
    public var netQuality: Int32 = 5
    // 音量
    public var volumeEnergy: Int32 = 5
    // 视频宽
    public var videoWidth: Int32 = 0
    // 视频高
    public var videoHeight: Int32 = 0
    // 是否屏幕共享
    public var screenShare: Bool = false

    required public override init() {}
}
