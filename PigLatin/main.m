//
//  main.m
//  PigLatin
//
//  Created by Spencer Symington on 2019-01-11.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Pig.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"%@", [@"kale chips" stringByPigLatinization]);
    }
    return 0;
}
