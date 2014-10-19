//
//  NumberExceptionTest.mm
//  sample
//
//  Created by 카르아나 on 2014. 10. 18..
//  Copyright (c) 2014년 Karuana. All rights reserved.
//

#include "NumberExceptionTest.h"
#include <vector>
#include <UrQA-Client-iOS/URQAController.h>
int NumberExceptionTest::throwDivdieError() {
    
    std::vector<int> test;
    URQABreadcrumb(@"Error Access Code");
    return test[0];
}

void NumberExceptionTest::callLoop(){
    std::vector<int> a;
    while(true) {
        a.push_back(1);
    }
}

int NumberExceptionTest::callFibonachi(int i) {
    if(i==0 || i == 1) {
        return 1;
    }
    
    return this->callFibonachi(i-1)+ this->callFibonachi(i-2);
    
}
