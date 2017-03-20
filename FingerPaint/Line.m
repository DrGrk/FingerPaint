//
//  Line.m
//  FingerPaint
//
//  Created by David Guichon on 2017-03-17.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "Line.h"

@implementation Line

- (instancetype)initWithColor:(UIColor *)color
{
    self = [super init];
    if (self) {
        _segments = [[NSMutableArray alloc] init];
        _color = color;
    }
    return self;
}


@end
