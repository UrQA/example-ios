//
//  URQAController.h
//  UrQA-Client-iOS
//
//  Created by Kawoou on 2014. 6. 25..
//  Copyright (c) 2014년 Kawoou. All rights reserved.
//

#import "URDefines.h"

#define URQALog(_EXCEPTION, _TAG)       [URQAController logException:_EXCEPTION withTag:_TAG];
#define URQABreadcrumb(_BREADCRUMB)     [URQAController leaveBreadcrumb:__LINE__ prettyFunction:__PRETTY_FUNCTION__ label:_BREADCRUMB];

@interface URQAController : NSObject

+ (NSString *)APIKey;
+ (void)setAPIKey:(NSString *)APIKey;

+ (URQAController *)sharedController;
+ (URQAController *)sharedControllerWithAPIKey:(NSString *)APIKey;

+ (BOOL)leaveBreadcrumb:(NSInteger)lineNumber;
+ (BOOL)leaveBreadcrumb:(NSInteger)lineNumber label:(NSString *)breadcrumb;
+ (BOOL)leaveBreadcrumb:(NSInteger)lineNumber prettyFunction:(const char *)prettyFunction label:(NSString *)breadcrumb;

+ (BOOL)logException:(NSException *)exception;
+ (BOOL)logException:(NSException *)exception withTag:(NSString *)tag;
+ (BOOL)logException:(NSException *)exception withTag:(NSString *)tag andErrorRank:(URErrorRank)errorRank;

@end