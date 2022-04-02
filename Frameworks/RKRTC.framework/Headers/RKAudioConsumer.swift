//
//  RKAudioConsumer.swift
//  RKRTC
//
//  Created by Rokid on 2022/3/4.
//

import Foundation

@objc public protocol RKAudioConsumer: NSObjectProtocol {
    
    /// 自定义采集数据
    /// - Parameters:
    ///   - inputId: 数据标识
    ///   - sampleRateHz: 采样率
    ///   - channels: 通道数
    ///   - data: 音频数据
    ///   - playDelayMS: 播放延时
    ///   - recDelayMS: 采集延时
    ///   - clockDrift: 时钟漂移
    @objc func consumeByteBufferFrame(inputId: String,
                                      sampleRateHz: Int32,
                                      channels: Int32,
                                      data: Int8,
                                      playDelayMS: Int32,
                                      recDelayMS: Int32,
                                      clockDrift: Int32)
    
}
