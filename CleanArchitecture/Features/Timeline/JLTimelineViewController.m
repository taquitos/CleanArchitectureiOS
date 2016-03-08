//
//  ViewController.m
//  CleanArchitecture
//
//  Created by Joshua Liebowitz on 3/8/16.
//  Copyright © 2016 Joshua Liebowitz. All rights reserved.
//

#import "JLAuthenticationInfo.h"
#import "JLTimelineService.h"
#import "JLTimelineViewController.h"

@interface JLTimelineViewController ()

@property (nonatomic, readonly) JLTimelineService *timelineService;

@end


@implementation JLTimelineViewController

- (instancetype)initWithAuthenticationInfo:(JLAuthenticationInfo *)authenticationInfo
{
    if (self = [super initWithNibName:nil bundle:nil]) {
        _timelineService = [[JLTimelineService alloc] initWithAuthenticationInfo:authenticationInfo];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.timelineService fetchTimelineWithCompletion:^(NSArray<JLTweet *> * _Nonnull tweets, NSError * _Nullable error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"fetched: %li tweet(s)", tweets.count);
        });

    }];
}

@end
