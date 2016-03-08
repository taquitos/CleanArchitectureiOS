//
//  JLTimelineAPI.h
//  CleanArchitecture
//
//  Created by Joshua Liebowitz on 3/8/16.
//  Copyright © 2016 Joshua Liebowitz. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JLTimelineRequest;
@class JLTweet;

typedef void(^TimelineAPICompletion)(NSArray<JLTweet *> * __nullable tweets, NSError * __nullable error);

@interface JLTimelineAPI : NSObject
NS_ASSUME_NONNULL_BEGIN

- (instancetype)initWithAuthenticationInfo:(JLAuthenticationInfo *)authenticationInfo NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;
- (void)fetchTimelineWithRequest:(JLTimelineRequest *)request completion:(TimelineAPICompletion)completion;

NS_ASSUME_NONNULL_END

@end
