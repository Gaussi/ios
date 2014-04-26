//
//  GSGaussiStoreCell.m
//  Gaussi
//
//  Created by Matt Sun on 4/26/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSGaussiStoreCell.h"

@implementation GSGaussiStoreCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) dataInit{
    self.backgroundColor = [UIColor clearColor];
    
    UIImageView *cover = [[UIImageView alloc] initWithFrame:CGRectMake(17, 21, 137, 182)];
    cover.image = [UIImage imageNamed:@"sampleComputerScience.png"];
    [self.contentView addSubview:cover];
    
    UILabel *encyclopediaName = [[UILabel alloc] initWithFrame:CGRectMake(173, 25, 380, 27)];
    encyclopediaName.text = @"History of Computer";
    [encyclopediaName setFont:[UIFont fontWithName:@"Helvetica Neue" size:23]];
    encyclopediaName.textColor = [UIColor whiteColor];
    [encyclopediaName setTextAlignment:NSTextAlignmentLeft];
    [self.contentView addSubview:encyclopediaName];
    
    UIView *vBar = [[UIView alloc] initWithFrame:CGRectMake(584, 9, 1, 206)];
    vBar.backgroundColor = [UIColor colorWithWhite:1 alpha:0.2];
    [self.contentView addSubview:vBar];
    
    UITextView *intro = [[UITextView alloc] initWithFrame:CGRectMake(173, 57, 380, 149)];
    intro.text = @"\"Who invented the computer?\" is not a question with a simple answer. The real answer is that many inventors contributed to the history of computers and that a computer is a complex piece of machinery made up of many parts, each of which can be considered a separate invention.";
    [intro setFont:[UIFont fontWithName:@"Helvetica Neue" size:13]];
    intro.textColor = [UIColor whiteColor];
    intro.backgroundColor = [UIColor clearColor];
    [intro setTextAlignment:NSTextAlignmentLeft];
    intro.userInteractionEnabled = NO;
    intro.editable = NO;
    [self.contentView addSubview:intro];
    
    UIButton *open = [[UIButton alloc] initWithFrame:CGRectMake(602, 178, 125, 24)];
    [open setImage:[UIImage imageNamed:@"PurchaseButtion.png"] forState:UIControlStateNormal];
    [self.contentView addSubview:open];
    
    UILabel *openlabel = [[UILabel alloc] initWithFrame:CGRectMake(602, 177, 125, 24)];
    openlabel.text = @"Open";
    [openlabel setTextAlignment:NSTextAlignmentCenter];
    [openlabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:17]];
    openlabel.textColor = [UIColor whiteColor];
    [self.contentView addSubview:openlabel];
    
    UIImageView* letter = [[UIImageView alloc] initWithFrame:CGRectMake(602, 92, 35, 25)];
    letter.image = [UIImage imageNamed:@"Letter.png"];
    [self.contentView addSubview:letter];
    
    UIImageView* face = [[UIImageView alloc] initWithFrame:CGRectMake(651, 89, 30, 30)];
    face.image = [UIImage imageNamed:@"Face.png"];
    [self.contentView addSubview:face];
    
    UIImageView* twitter = [[UIImageView alloc] initWithFrame:CGRectMake(694, 92, 32, 26)];
    twitter.image = [UIImage imageNamed:@"Twitter.png"];
    [self.contentView addSubview:twitter];
    
    for (int i=0; i<4; i++) {
        UIImageView* star = [[UIImageView alloc] initWithFrame:CGRectMake(602+26*i, 31, 21, 20)];
        star.image = [UIImage imageNamed:@"RatingStarWhite.png"];
        [self.contentView addSubview:star];
    }
    
    UIImageView* star = [[UIImageView alloc] initWithFrame:CGRectMake(602+26*4, 31, 21, 20)];
    star.image = [UIImage imageNamed:@"RatingStarTransparent.png"];
    [self.contentView addSubview:star];
    
    UILabel* review = [[UILabel alloc] initWithFrame:CGRectMake(602, 57, 125, 15)];
    review.text = @"113 readers reviews";
    [review setFont:[UIFont fontWithName:@"Helvetica Neue" size:13]];
    review.textColor = [UIColor whiteColor];
    [self.contentView addSubview:review];
}


@end
