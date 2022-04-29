//
//  RKAVAnalysisModel.swift
//  RKRTC
//
//  Created by Amos on 2022/4/14.
//

import Foundation

@objcMembers
public class RKAVAnalysisModel: NSObject {
    // 用户ID
    public var userId: String = ""
    // 丢包数
    public var packetsLost: Int32 = 0
    
    // video
    // 大小流 h l
    public var rid: String = ""
    // 视频宽
    public var width: Int32 = 0
    // 视频高
    public var height: Int32 = 0
    // 帧率
    public var fps: Int32 = 0
    // 码率 kfps
    public var bitrate: Int32 = 0
    // 丢包率 0-1
    public var lossRate: Float = 0
    // 质量限制原因
    public var qualityLimitationReason: String = ""
    
    // audio
    // 音频等级
    public var audioLevel: Double = 0
    // 音频能量
    public var totalAudioEnergy: Double = 0
    // 音频时间
    public var totalSamplesDuration: Double = 0
    
}
