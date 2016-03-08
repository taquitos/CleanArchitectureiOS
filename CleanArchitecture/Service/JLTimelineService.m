//
//  JLTimelineService.m
//  CleanArchitecture
//
//  Created by Joshua Liebowitz on 3/8/16.
//  Copyright © 2016 Joshua Liebowitz. All rights reserved.
//

#import "JLAuthenticationInfo.h"
#import "JLTimelineAPI.h"
#import "JLTimelineRequest.h"
#import "JLTimelineService.h"

@interface JLTimelineService()

@property (nonatomic, copy, readonly) JLAuthenticationInfo *authInfo;
@property (nonatomic, readonly) JLTimelineAPI *timelineAPI;

@end

@implementation JLTimelineService

- (instancetype)initWithAuthenticationInfo:(JLAuthenticationInfo *)authenticationInfo
{
    if (self = [super init]) {
        _authInfo = [authenticationInfo copy];
        _timelineAPI = [[JLTimelineAPI alloc] initWithAuthenticationInfo:authenticationInfo];
    }
    return self;
}

- (void)fetchTimelineWithCompletion:(TimelineCompletion)completion
{
    JLTimelineRequest *request = [[JLTimelineRequest alloc] initWithUserID:self.authInfo.userID startDate:[[[NSDate alloc] init] dateByAddingTimeInterval:-86400] endDate:[[NSDate alloc] init]];
    [self.timelineAPI fetchTimelineWithRequest:request completion:^(NSArray<JLTweet *> * _Nullable tweets, NSError * _Nullable error) {
        if (completion) {
            if (!tweets) {
                tweets = [[NSArray alloc] init];
            }
            completion(tweets, nil);
        }
    }];
}

@end
