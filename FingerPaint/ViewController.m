//
//  ViewController.m
//  FingerPaint
//
//  Created by David Guichon on 2017-03-17.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "ViewController.h"
#import "Line.h"
#import "PaintView.h"
#import "Segment.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray <Line *> * lines;
@property (nonatomic, strong) UIColor *color;




@end

@implementation ViewController


//look into NSCoder
//CREATE AN ARRAY TO HOLD THE INSTANCES OF PAINTVIEW...MODEL OR CONTROLLER??...THEN SET VIEW CONTROLLER TO CREATE A NEW INSTANCE EVERY TIME  
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _lines = [[NSMutableArray alloc] init];
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIColor *color = self.color;
    Line *line = [[Line alloc] initWithColor:color];
    UITouch *touch = touches.anyObject;
    Segment *segment = [[Segment alloc] init];
    segment.firstPoint = [touch locationInView: self.view];
    segment.secondPoint = [touch previousLocationInView: self.view];
    [line.segments addObject:segment];
    [self.lines addObject:line];
    [self.paintView setNeedsDisplay];
    self.paintView.lines = self.lines;
    self.paintView.color = self.color;
}


-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%@", event);
    UITouch *touch = touches.anyObject;
    Segment *segment = [[Segment alloc] init];
    segment.firstPoint = [touch locationInView: self.view];
    segment.secondPoint = [touch previousLocationInView: self.view];
    [self.lines.lastObject.segments addObject:segment];
    [self.paintView setNeedsDisplay];
    self.paintView.lines = self.lines;
}


-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"The final touch was %@", self.lines.lastObject);
}



- (IBAction)chooseRed:(UIButton *)sender {
    self.color = [UIColor redColor];
}

- (IBAction)choosePurple:(UIButton *)sender {
    self.color = [UIColor purpleColor];
}

- (IBAction)chooseGreen:(UIButton *)sender {
    self.color = [UIColor greenColor];
}

- (IBAction)chooseYellow:(UIButton *)sender {
     self.color = [UIColor yellowColor];
}

- (IBAction)chooseBlack:(UIButton *)sender {
     self.color = [UIColor blackColor];
}

- (IBAction)chooseBlue:(UIButton *)sender {
    self.color = [UIColor blueColor];
}

@end
