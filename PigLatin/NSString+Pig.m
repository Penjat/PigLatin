//
//  NSString+Pig.m
//  PigLatin
//
//  Created by Spencer Symington on 2019-01-11.
//  Copyright © 2019 Spencer Symington. All rights reserved.
//

#import "NSString+Pig.h"



@implementation NSString (Pig)

-(NSString*)stringByPigLatinization{
    
    NSString *stringInPigLatin = @"";
    
    
    NSArray *words = [self componentsSeparatedByString:@" "];
    
    for (NSString *word in words) {
        stringInPigLatin = [stringInPigLatin stringByAppendingString:[word modifyWord]];
    }
    
    return stringInPigLatin;
}

-(NSString*)modifyWord{

    //cycle through the characters
    NSString *newWord = [self mutableCopy];
    
    NSRange range = [self findRange];
    NSString *ending = [self substringWithRange:range];
    newWord = [newWord stringByReplacingCharactersInRange:range withString:@""];
    

    return [NSString stringWithFormat:@"%@%@%@",newWord,ending,@"ay "];
}
-(NSRange)findRange{
    
    BOOL foundConsonant = NO;
    NSUInteger firstPos = 0;
    NSUInteger secondPos = 0;
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    
    
    for(int i=0;i< [self length];i++){
        char * curChar = [self characterAtIndex:i];
        //
        //check if the char is a vowel and
        if([vowels characterIsMember:curChar]){
            
            //found the end of the range
            secondPos = i;
            NSRange range = NSMakeRange(firstPos, secondPos);
            
            return range;
            
        }else if(!foundConsonant){//must be a con
            //if we haven't found a consanent, set foundConsanent to true
            foundConsonant = YES;
            
            //set the begining of the range;
            firstPos = i;
        }else{
            //we are in the middle of a group of consanants, do nothing
            
        }
        
    }
    
    //will end here if last letter is a consenant
    secondPos = [self length];
    NSRange range = NSMakeRange(firstPos, secondPos);
    return range;
    
}


@end
