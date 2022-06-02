//
//  RTCVideoEncoderH264SoftWare.h
//  AppRTCMobile
//
//  Created by chzy on 2022/5/6.
//

#import <Foundation/Foundation.h>

#import <WebRTC/RTCMacros.h>
#import <WebRTC/RTCVideoEncoder.h>
#import <WebRTC/RTCVideoDecoder.h>

@interface RTCVideoEncoderH264SoftWare : NSObject

+ (id<RTC_OBJC_TYPE(RTCVideoEncoder)>)h264Encoder;

+ (bool)isSupported;

@end

@interface RTCVideoDecoderH264Software : NSObject

+ (id<RTC_OBJC_TYPE(RTCVideoDecoder)>)h264Decoder;

@end
