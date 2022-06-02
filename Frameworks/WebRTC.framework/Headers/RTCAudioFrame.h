//
//  RTCAudioFrame.h
//  sources
//
//  Created by Amos on 2022/5/16.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <WebRTC/RTCMacros.h>

NS_ASSUME_NONNULL_BEGIN

@interface RTC_OBJC_TYPE (RTCAudioFrame) : NSObject
@property(nonatomic, assign) AudioBufferList *audioBufferList;
@property(nonatomic, assign) const AudioTimeStamp *timeStamp;
@property(nonatomic, assign) int32_t busNumber;
@property(nonatomic, assign) int32_t numFrames;

@end

NS_ASSUME_NONNULL_END
