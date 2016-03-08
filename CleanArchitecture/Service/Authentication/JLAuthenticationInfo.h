//
//  JLAuthenticationInfo.h
//  CleanArchitecture
//
//  Created by Joshua Liebowitz on 3/8/16.
//  Copyright © 2016 Joshua Liebowitz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JLAuthenticationInfo : NSObject
NS_ASSUME_NONNULL_BEGIN

@property (nonatomic, copy, readonly) NSString *userID;

// maybe init with API key + secret, or the object might know how to get its own data from keychain
// have properties that contain that data

NS_ASSUME_NONNULL_END

@end
