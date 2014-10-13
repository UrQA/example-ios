//
//  FirstViewController.m
//  sample
//
//  Created by 카르아나 on 2014. 10. 13..
//  Copyright (c) 2014년 Karuana. All rights reserved.
//

#import "FirstViewController.h"
#import <UrQA-Client-iOS/URQAController.h>

@interface FirstViewController ()

@end

@implementation FirstViewController

- (IBAction)errorBtnDwonEvent:(id)sender {
    @try {
        NSMutableArray *array = (NSMutableArray*) [[NSArray alloc] init];
        [array addObject:@"Test"];
    }
    @catch (NSException *exception) {
        URQALog(exception, @"Array Error");
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    URQABreadcrumb(@"First View Open");
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
