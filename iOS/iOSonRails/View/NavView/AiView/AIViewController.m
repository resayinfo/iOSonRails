//
//  NavViewController.m
//  iOSonRails
//
//  Created by huangmh on 3/21/15.
//  Copyright (c) 2015 minghe. All rights reserved.
//

/*
 * hao -> le -> jing -> ai -> ju -> e -> nu
 */
#import "AiViewController.h"

@implementation AiViewController

+ (AiViewController *)sharedInstance {
    static AiViewController *sharedInstance = nil;
    @synchronized(self) {
        if (!sharedInstance)
            sharedInstance = [[AiViewController alloc] init];
        return sharedInstance;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.type = AI;
    self.from = JING;
    self.to = JU;
    /*
     * TODO: should get from Server via REST API
     */
    self.coverCategory = @"今日最哀";
    self.coverImage = @"http://img3.cache.netease.com/cnews/2015/3/21/20150321102847189e4.jpg";
    self.coverTitle = @"缅甸总统：果敢冲突是内部事务 中国无法解决";
    
    self.motionManager = [[CMMotionManager alloc] init];//一般在viewDidLoad中进行
    self.motionManager.accelerometerUpdateInterval = .1;//加速仪更新频率，以秒为单位
}

@end