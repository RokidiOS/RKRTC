//
//  RKVideoSource.swift
//  RKRTC
//
//  Created by Rokid on 2022/3/4.
//

import Foundation

@objc public protocol RKVideoSource: NSObjectProtocol {
    
    /// 创建
    @objc func onCreate(_ consumer: RKVideoFrameConsumer)

    /// 开始采集数据
    @objc func onStart()

    /// 结束采集数据
    @objc func onStop()

}
