//
//  Calculator.m
//  Sample
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 Lotte, Inc. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator{
   double accumalator;
}
//
//- (void) setAccumalator:(double)value{
//    accumalator = value;
//}
- (void) clear {
    self.accumalator = 0;
}
//-(double) accumalator{
//    return accumalator;
//}

-(void)add:(double)value{
    self.accumalator += value;
}
-(void)subtract:(double)value{
    self.accumalator -= value;
}

-(void)multiply:(double)value{
    self.accumalator *= value;
}
-(void)divide:(double)value{
    self.accumalator /= value;
}

@end
