//
//  FirstViewController.m
//  sample
//
//  Created by 카르아나 on 2014. 10. 13..
//  Copyright (c) 2014년 Karuana. All rights reserved.
//

#import "FirstViewController.h"
#import "NumberExceptionTest.h"
#import <UrQA-Client-iOS/URQAController.h>
#import <UrQA-Client-iOS/URDefines.h>

@interface FirstViewController ()

@end

@implementation FirstViewController

- (IBAction)errorBtnDownEvent:(id)sender {
    @try {
        NSMutableArray *array = (NSMutableArray*) [[NSArray alloc] init];
        [array addObject:@"Test"];
    }
    @catch (NSException *exception) {
        URQABreadcrumb(@"First Error ");
        URQALog(exception, @"Array Error");
    }
}

- (IBAction)callEventPathData:(id)sender {
    URQABreadcrumb(@"Start Event Path");
    @try {
        URQABreadcrumb(@"try block");
        [URQAController leaveBreadcrumb:200000 prettyFunction:"customFunction" label:@"Custom Test"];
        [URQAController leaveBreadcrumb:200000 label:@"Custom Test Non pretty Function"];
        float data = 10 /0.0;
        NSLog(@"%f",data);
        URQALog([[NSException alloc]init], @"dividetd Zero");
        
    }
    @catch (NSException *exception) {
        URQABreadcrumb(@"First Error ");
        [URQAController logException:exception withTag:@"divided Zero" andErrorRank:URErrorRankMajor];
    }
}

- (IBAction)callUncatchedErrorReport :(id)sender {
    URQABreadcrumb(@"0x00 Memory Access");
    *((int *)(0x00)) = 0;
    
}

- (IBAction)callErrorRankCritical :(id)sender {
    @try {
        NSMutableArray *array = (NSMutableArray*) [[NSArray alloc] init];
        [array addObject:@"Test"];
    }
    @catch (NSException *exception) {
        URQABreadcrumb(@"Critical Error ");
        [URQAController logException:exception withTag:@"critical Error" andErrorRank:URErrorRankCritical];
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
