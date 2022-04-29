//
//  RKAVQualityListener.swift
//  RKRTC
//
//  Created by Amos on 2022/4/13.
//

import Foundation

@objc public protocol RKAVQualityListener: NSObjectProtocol {
    
    /// 远端音频参数回调
    @objc func onRemoteAudioStatus(_ userId: String,
                                   audioLevel: Double,
                                   totalAudioEnergy: Double,
                                   totalSamplesDuration: Double,
                                   packetsLost: Int32)
    
    // 远端视频参数回调
    @objc func onRemoteVideoStatus(_ userId: String,
                                   rid: String?,
                                   width: Int32,
                                   height: Int32,
                                   fps: Int32,
                                   bitrate: Int32,
                                   packetsLost: Int32)
    
    // 本端音频参数回调
    @objc func onAudioStatus(audioLevel: Double,
                             totalAudioEnergy: Double,
                             totalSamplesDuration: Double)
    
    
    // 本端视频参数回调
    @objc func onVideoRecordStatus(width: Int32,
                                   height: Int32,
                                   fps: Int32)
    
    // 本端视频参数回调
    @objc func onVideoPublishStatus(rid: String?,
                                    width: Int32,
                                    height: Int32,
                                    fps: Int32,
                                    bitrate: Int32,
                                    qualityLimitationReason: String?)
    
    // 丢包率
    @objc func onVideoStreamUnstable(userId: String, lossRate: Float)
    
}
