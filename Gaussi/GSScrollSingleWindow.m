//
//  GSScrollSingleWindow.m
//  Gaussi
//
//  Created by Matt Sun on 4/28/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSScrollSingleWindow.h"

@implementation GSScrollSingleWindow

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setFrame:CGRectMake(frame.origin.x, 0, 574, 288)];
    }
    return self;
}

- (void)layoutInit{
    
    UIImageView* wdbg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    wdbg.image = [UIImage imageNamed:self.bgName];
    [self addSubview:wdbg];
    
    UIImageView* banner = [[UIImageView alloc] initWithFrame:CGRectMake(0, 163, self.frame.size.width, 129)];
    banner.image = [UIImage imageNamed:@"HPDidYouKnowFrame.png"];
    [self addSubview:banner];
    
    UIImageView* cover = [[UIImageView alloc] initWithFrame:CGRectMake(457, 136, 98, 130)];
    cover.image = [UIImage imageNamed:self.coverName];
    [self addSubview:cover];
    
    UIImageView* learnMore = [[UIImageView alloc] initWithFrame:CGRectMake(318, 221, 125, 24)];
    learnMore.image = [UIImage imageNamed:@"HPLearnMoreButton.png"];
    [self addSubview:learnMore];
    
    UIImageView* quest = [[UIImageView alloc] initWithFrame:CGRectMake(28, 189, 18, 25)];
    quest.image = [UIImage imageNamed:@"HPQuestionMark.png"];
    [self addSubview:quest];
    
    UILabel* didUKnow = [[UILabel alloc] initWithFrame:CGRectMake(55, 198, 150, 21)];
    didUKnow.text = @"Did you know?";
    [didUKnow setFont:[UIFont fontWithName:@"Helvetica-BoldOblique" size:17]];
    didUKnow.textColor = [UIColor blackColor];
    [self addSubview:didUKnow];
    
    UITextView* briefIntro = [[UITextView alloc] initWithFrame:CGRectMake(27, 219, 230, 90)];
    briefIntro.text = self.intro;
    [briefIntro setTextAlignment:NSTextAlignmentLeft];
    [briefIntro setFont:[UIFont fontWithName:@"Helvetica-Oblique" size:13]];
    briefIntro.textColor = [UIColor blackColor];
    briefIntro.editable = NO;
    briefIntro.userInteractionEnabled = NO;
    briefIntro.backgroundColor = [UIColor clearColor];
    [self addSubview:briefIntro];
    
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
