//
//  RTMountainPath.m
//  Race to the Top
//
//  Created by Mike Neirinck on 23/12/14.
//  Copyright (c) 2014 mike.neirinck. All rights reserved.
//

#import "RTMountainPath.h"

@implementation RTMountainPath

+ (NSArray *)mountainPathsForRect:(CGRect)rect
{
    NSMutableArray *variousPaths = [@[]mutableCopy];
    CGPoint firstPoint = CGPointMake(rect.size.width * (1/6.0), CGRectGetMaxY(rect));
    CGPoint secondPoint = CGPointMake(rect.size.width * (1/3.0), rect.size.height * (5/6.0));

    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    bezierPath.lineWidth = 4.0;
    [bezierPath moveToPoint:firstPoint];
    [bezierPath addLineToPoint:secondPoint];
    [variousPaths addObject:bezierPath];
    
        NSLog(@"haalo");
    return variousPaths;
}
@end
