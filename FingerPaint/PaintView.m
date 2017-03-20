//
//  PaintView.m
//  FingerPaint
//
//  Created by David Guichon on 2017-03-17.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "PaintView.h"
#import "Line.h"
#import "Segment.h"

@implementation PaintView


- (void)drawRect:(CGRect)rect {
    
    for (Line *line in self.lines) {
        UIBezierPath *path = [[UIBezierPath alloc] init];
        [line.color setStroke];
        Segment* segment = line.segments.firstObject;
        [path moveToPoint:segment.firstPoint];
        for (Segment *segment in line.segments) {
            [path addLineToPoint:segment.firstPoint];
        }
    [path stroke];
    }
    
}


//- (void)drawRect:(CGRect)rect {
//    UIBezierPath *path = [[UIBezierPath alloc] init];
//    [self.color setStroke];
//    for (Line *line in self.lines) {
//        Segment* segment = line.segments.firstObject;
//        [path moveToPoint:segment.firstPoint];
//        for (Segment *segment in line.segments) {
//            [path addLineToPoint:segment.firstPoint];
//        }
//    }
//    [path stroke];
//}


@end
