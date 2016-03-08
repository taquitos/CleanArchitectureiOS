//
//  JLTimelineService.h
//  CleanArchitecture
//
//  Created by Joshua Liebowitz on 3/8/16.
//  Copyright © 2016 Joshua Liebowitz. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JLAuthenticationInfo;
@class JLTweet;

typedef void(^TimelineCompletion)(NSArray<JLTweet *> * __nonnull tweets, NSError * __nullable error);

@interface JLTimelineService : NSObject

NS_ASSUME_NONNULL_BEGIN

- (instancetype)initWithAuthenticationInfo:(JLAuthenticationInfo *)authenticationInfo NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;
- (void)fetchTimelineWithCompletion:(TimelineCompletion)completion;

NS_ASSUME_NONNULL_END

@end
