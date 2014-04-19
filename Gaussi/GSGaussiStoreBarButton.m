//
//  GSGaussiStoreBarButton.m
//  Gaussi
//
//  Created by Matt Sun on 4/19/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSGaussiStoreBarButton.h"

@implementation GSGaussiStoreBarButton

- (id)initWithFrame:(CGRect)frame
            andIcon:(UIImage*)icon
          withFrame: (CGRect) iconFrame
           andLabel: (NSString*) labelName
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(frame.origin.x, frame.origin.y, 144, 99)];
        
        UIView *buttonBg = [[UIView alloc] initWithFrame:CGRectMake(0, 3, 144, 96)];
        buttonBg.backgroundColor = [UIColor whiteColor];
        buttonBg.alpha = 0.4;
        buttonBg.tag = 1;
        [self addSubview:buttonBg];
        
        UIView *indicator = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 144, 3)];
        indicator.backgroundColor = [UIColor colorWithRed:247/255.0f green:147/255.0f blue:30/255.0f alpha:1.0f];
        indicator.tag = 2;
        [self addSubview:indicator];
        
        UIImageView *button = [[UIImageView alloc] initWithFrame:iconFrame];
        button.image = icon;
        [self addSubview:button];
        
        UILabel *name = [[UILabel alloc] initWithFrame:CGRectMake(0, 60, 144, 31)];
        name.text = labelName;
        name.textAlignment = NSTextAlignmentCenter;
        [name setFont:[UIFont fontWithName:@"Helvetica Neue" size:12]];
        name.textColor = [UIColor whiteColor];
        [self addSubview:name];
    }
    return self;
}

- (void) refresh{
    if (self.selected) {
        [self viewWithTag:2].hidden = NO;
        [self viewWithTag:1].hidden = NO;
    }
    else{
        [self viewWithTag:2].hidden = YES;
        [self viewWithTag:1].hidden = YES;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
