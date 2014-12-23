//
//  RTPathView.m
//  Race to the Top
//
//  Created by Mike Neirinck on 23/12/14.
//  Copyright (c) 2014 mike.neirinck. All rights reserved.
//

#import "RTPathView.h"
#import "RTMountainPath.h"

@implementation RTPathView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    for (UIBezierPath *path in [RTMountainPath mountainPathsForRect:self.bounds]) {
        [[UIColor blackColor]setStroke];
        [path stroke];
    }
}


@end
