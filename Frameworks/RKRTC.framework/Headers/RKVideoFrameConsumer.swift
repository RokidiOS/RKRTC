//
//  RKVideoFrameConsumer.swift
//  RKRTC
//
//  Created by Rokid on 2022/3/4.
//

import Foundation
import AVFoundation

@objc public protocol RKVideoFrameConsumer: NSObjectProtocol {
    
    /// 自定义采集数据
    /// - Parameters:
    ///   - buffer: 视频数据
    ///   - format: 视频格式 @RKVideoFormat
    ///   - width: 视频宽
    ///   - height: 视频高
    ///   - rotation: 旋转角度 @RKVideoRotation
    ///   - timestamp: 时间
    @objc func consumeByteBufferFrame(buffer: CVPixelBuffer,
                                      format: RKVideoFormat,
                                      width: Int32,
                                      height: Int32,
                                      rotation: RKVideoRotation,
                                      timestamp: Int64)
    
    /// 自定义采集数据
    /// - Parameters:
    ///   - data: 视频数据
    ///   - format: 视频格式 @RKVideoFormat
    ///   - width: 视频宽
    ///   - height: 视频高
    ///   - rotation: 旋转角度 @RKVideoRotation
    ///   - timestamp: 时间
    @objc func consumeByteArrayFrame(data: [UInt8],
                                     format: RKVideoFormat,
                                     width: Int32,
                                     height: Int32,
                                     rotation: RKVideoRotation,
                                     timestamp: Int64)
    
}
