//
//  URDefines.h
//  UrQA-Client-iOS
//
//  Created by Kawoou on 2014. 6. 25..
//  Copyright (c) 2014년 Kawoou. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, URErrorRank)
{
    URErrorRankNothing      = -1,
    URErrorRankUnhandle     = 0,
    URErrorRankNative       = 1,
    URErrorRankCritical     = 2,
    URErrorRankMajor        = 3,
    URErrorRankMinor        = 4
};

// Clang Diagnostic
#define CLANG_IGNORE_HELPER0(x) #x
#define CLANG_IGNORE_HELPER1(x) CLANG_IGNORE_HELPER0(clang diagnostic ignored x)
#define CLANG_IGNORE_HELPER2(y) CLANG_IGNORE_HELPER1(#y)

#define CLANG_POP _Pragma("clang diagnostic pop")
#define CLANG_IGNORE(x)\
_Pragma("clang diagnostic push");\
_Pragma(CLANG_IGNORE_HELPER2(x))

bool isDigit(NSString* testString);