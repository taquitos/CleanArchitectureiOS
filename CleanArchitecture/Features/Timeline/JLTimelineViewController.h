//
//  ViewController.h
//  CleanArchitecture
//
//  Created by Joshua Liebowitz on 3/8/16.
//  Copyright © 2016 Joshua Liebowitz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JLAuthenticationInfo;

@interface JLTimelineViewController : UIViewController

NS_ASSUME_NONNULL_BEGIN

- (instancetype)initWithAuthenticationInfo:(JLAuthenticationInfo *)authenticationInfo;
- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil NS_UNAVAILABLE;
- (instancetype)initWithCoder:(NSCoder *)aDecoder NS_UNAVAILABLE;

NS_ASSUME_NONNULL_END


@end

