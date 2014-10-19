//
//  SecondViewController.m
//  sample
//
//  Created by 카르아나 on 2014. 10. 13..
//  Copyright (c) 2014년 Karuana. All rights reserved.
//

#import "SecondViewController.h"
#import "NumberExceptionTest.h"
#import <UrQA-Client-iOS/URQAController.h>

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    URQABreadcrumb(@"Second View Open");
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)callThrowNotAllowedMemoryAccess:(id)sender {
    @try{
        NumberExceptionTest* number = new NumberExceptionTest();
        number->throwDivdieError();
        delete number;
    } @catch(NSException *exception){
        URQALog(exception, @"Dividie error c++");
    }
    
    
}

- (IBAction)callLoop:(id)sender {
    URQABreadcrumb(@"Loop Call ");
    NumberExceptionTest* number = new NumberExceptionTest();
    number->callFibonachi(2000000);
}

@end
