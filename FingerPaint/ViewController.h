//
//  ViewController.h
//  FingerPaint
//
//  Created by David Guichon on 2017-03-17.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PaintView;

@interface ViewController : UIViewController


@property (nonatomic, strong) NSMutableArray <PaintView *> *paintViewArrays;
@property (strong, nonatomic) IBOutlet PaintView *paintView;

- (IBAction)chooseRed:(UIButton *)sender;



- (IBAction)choosePurple:(UIButton *)sender;

- (IBAction)chooseGreen:(UIButton *)sender;

- (IBAction)chooseYellow:(UIButton *)sender;

- (IBAction)chooseBlack:(UIButton *)sender;

- (IBAction)chooseBlue:(UIButton *)sender;

@end

