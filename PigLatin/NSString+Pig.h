//
//  NSString+Pig.h
//  PigLatin
//
//  Created by Spencer Symington on 2019-01-11.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Pig)
-(NSString*)stringByPigLatinization;
-(NSString*)modifyWord;
-(NSRange)findRange;
@end

NS_ASSUME_NONNULL_END
