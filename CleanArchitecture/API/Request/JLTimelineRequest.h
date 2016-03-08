//
//  JLTimelineRequest.h
//  CleanArchitecture
//
//  Created by Joshua Liebowitz on 3/8/16.
//  Copyright © 2016 Joshua Liebowitz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JLTimelineRequest : NSObject

NS_ASSUME_NONNULL_BEGIN

@property (nonatomic, copy, readonly) NSString *userID;
@property (nonatomic, copy, readonly) NSDate *startDate;
@property (nonatomic, copy, readonly) NSDate *endDate;

- (instancetype)initWithUserID:(NSString *)userID startDate:(NSDate *)startDate endDate:(NSDate *)endDate NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;

NS_ASSUME_NONNULL_END


@end
