//
//  JLTimelineRequest.m
//  CleanArchitecture
//
//  Created by Joshua Liebowitz on 3/8/16.
//  Copyright © 2016 Joshua Liebowitz. All rights reserved.
//

#import "JLTimelineRequest.h"

@implementation JLTimelineRequest

- (instancetype)initWithUserID:(NSString *)userID startDate:(NSDate *)startDate endDate:(NSDate *)endDate
{
    if (self = [super init]) {
        _userID = [userID copy];
        _startDate = [startDate copy];
        _endDate = [endDate copy];
    }
    return self;
}

@end
