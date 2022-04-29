//
//  RKAudioSource.swift
//  RKRTC
//
//  Created by Rokid on 2022/3/4.
//

import Foundation

@objc public protocol RKAudioSource: NSObjectProtocol {
    
    /// 初始化自定义音频采集模块
    @objc func onCreate(consumer: RKAudioConsumer)

    /// 开始采集音频数据
    @objc func onStart()

    /// 结束采集数据
    @objc func onStop()
}
