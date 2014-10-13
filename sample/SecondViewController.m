//
//  SecondViewController.m
//  sample
//
//  Created by 카르아나 on 2014. 10. 13..
//  Copyright (c) 2014년 Karuana. All rights reserved.
//

#import "SecondViewController.h"
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

@end
