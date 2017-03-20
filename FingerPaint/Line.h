//
//  Line.h
//  FingerPaint
//
//  Created by David Guichon on 2017-03-17.
//  Copyright © 2017 David Guichon. All rights reserved.
//

@import UIKit;

@interface Line : NSObject

@property (nonatomic, strong) NSMutableArray *segments;
@property (nonatomic, copy) UIColor *color;

-(instancetype)initWithColor:(UIColor *)color;

@end
