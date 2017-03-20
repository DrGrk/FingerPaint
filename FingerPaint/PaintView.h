//
//  PaintView.h
//  FingerPaint
//
//  Created by David Guichon on 2017-03-17.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaintView : UIView

@property (nonatomic, copy) NSArray *lines;
@property (nonatomic, copy) UIColor *color;

@end
