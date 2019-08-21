//
//  OSSBuglyLogger.m
//  AliyunOSSiOS
//
//  Created by Jake on 2019/8/21.
//

#import "OSSBuglyLogger.h"
#import <Bugly/Bugly.h>

static OSSBuglyLogger *sharedInstance;

@implementation OSSBuglyLogger
+ (instancetype)sharedInstance {
    static dispatch_once_t OSSNSLoggerOnceToken;
    
    dispatch_once(&OSSNSLoggerOnceToken, ^{
        sharedInstance = [[[self class] alloc] init];
    });
    
    return sharedInstance;
}

- (void)logMessage:(OSSDDLogMessage *)logMessage {
    NSString * message = _logFormatter ? [_logFormatter formatLogMessage:logMessage] : logMessage->_message;
    if (message) {
        BLYLogWarn(@"%@",message);
    }
}
@end
