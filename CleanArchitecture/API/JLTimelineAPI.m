//
//  JLTimelineAPI.m
//  CleanArchitecture
//
//  Created by Joshua Liebowitz on 3/8/16.
//  Copyright © 2016 Joshua Liebowitz. All rights reserved.
//

#import "JLAuthenticationInfo.h"
#import "JLTimelineAPI.h"
#import "JLTweet.h"

@interface JLTimelineAPI ()

@property (nonatomic, copy, readonly) JLAuthenticationInfo *authInfo;

@end

@implementation JLTimelineAPI

- (instancetype)initWithAuthenticationInfo:(JLAuthenticationInfo *)authenticationInfo
{
    if (self = [super init]) {
        _authInfo = [authenticationInfo copy];
    }
    return self;

}

- (void)fetchTimelineWithRequest:(JLTimelineRequest *)request completion:(TimelineAPICompletion)completion
{
    dispatch_queue_t userInteractiveQueue = dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0);
    dispatch_async(userInteractiveQueue, ^{
        if (completion) {
            // networking code, json parsing, etc
            // pretend it takes 2 seconds
            [NSThread sleepForTimeInterval:2.0f];
            JLTweet *tweet = [[JLTweet alloc] init];
            completion(@[tweet], nil);
        }
    });
}

@end
