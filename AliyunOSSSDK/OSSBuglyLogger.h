//
//  OSSBuglyLogger.h
//  AliyunOSSiOS
//
//  Created by Jake on 2019/8/21.
//

#import "OSSDDLog.h"
#import "OSSDDLog.h"

NS_ASSUME_NONNULL_BEGIN

@interface OSSBuglyLogger : OSSDDAbstractLogger<OSSDDLogger>

@property (class, readonly, strong) OSSBuglyLogger *sharedInstance;

@end

NS_ASSUME_NONNULL_END
