//
//  GSInfoBoxView.m
//  Gaussi
//
//  Created by Matt Sun on 5/1/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSInfoBoxView.h"

@interface GSInfoBoxView ()

@end

@implementation GSInfoBoxView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [UIApplication sharedApplication].statusBarHidden = YES;
    
    UIImageView* bg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 571, 595)];
    bg.image = [UIImage imageNamed:@"SampleInfoBoxBackgroundImage.png"];
    [self.view addSubview:bg];
    
    UIView* spLine1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 571, 2)];
    spLine1.backgroundColor = [UIColor colorWithRed:247/255.0f green:147/255.0f blue:30/255.0f alpha:1.0f];;
    [self.view addSubview:spLine1];
    
    UIView* spLine2 = [[UIView alloc] initWithFrame:CGRectMake(0, 42, 571, 1)];
    spLine2.backgroundColor = [UIColor colorWithWhite:1 alpha:0.2];
    [self.view addSubview:spLine2];
    
    UIView* spLine3 = [[UIView alloc] initWithFrame:CGRectMake(0, 295, 571, 1)];
    spLine3.backgroundColor = [UIColor colorWithWhite:1 alpha:0.2];;
    [self.view addSubview:spLine3];
    
    UIView* spLine4 = [[UIView alloc] initWithFrame:CGRectMake(0, 416, 571, 1)];
    spLine4.backgroundColor = [UIColor colorWithWhite:1 alpha:0.2];;
    [self.view addSubview:spLine4];
    
    UIImageView* cover = [[UIImageView alloc] initWithFrame:CGRectMake(13, 52, 174, 231)];
    cover.image = [UIImage imageNamed:@"sampleComputerScience.png"];
    [self.view addSubview:cover];
    
    UILabel* title = [[UILabel alloc] initWithFrame:CGRectMake(13, 9, 350, 27)];
    title.text = @"History of Computer";
    [title setFont:[UIFont fontWithName:@"Helvetica Neue" size:23]];
    [title setTextAlignment:NSTextAlignmentLeft];
    title.textColor = [UIColor whiteColor];
    [self.view addSubview:title];
    
    UILabel* reviews = [[UILabel alloc] initWithFrame:CGRectMake(339, 59, 200, 30)];
    reviews.text = @"113 readers reviews";
    [reviews setFont:[UIFont fontWithName:@"Helvetica Neue" size:13]];
    [reviews setTextAlignment:NSTextAlignmentLeft];
    reviews.textColor = [UIColor whiteColor];
    [self.view addSubview:reviews];
    
    UILabel* lastUpdate = [[UILabel alloc] initWithFrame:CGRectMake(202, 178, 175, 26)];
    lastUpdate.text = @"Last updated on May 23rd, 2014";
    [lastUpdate setFont:[UIFont fontWithName:@"Helvetica Neue" size:12]];
    [lastUpdate setTextAlignment:NSTextAlignmentLeft];
    lastUpdate.textColor = [UIColor whiteColor];
    [self.view addSubview:lastUpdate];
    
    UILabel* authorName = [[UILabel alloc] initWithFrame:CGRectMake(105, 306, 300, 16)];
    authorName.text = @"About Junfeng Sun";
    [authorName setFont:[UIFont fontWithName:@"Helvetica-Bold" size:13]];
    [authorName setTextAlignment:NSTextAlignmentLeft];
    authorName.textColor = [UIColor whiteColor];
    [self.view addSubview:authorName];
    
    UILabel* alsoLike = [[UILabel alloc] initWithFrame:CGRectMake(13, 426, 150, 16)];
    alsoLike.text = @"You might also like";
    [alsoLike setFont:[UIFont fontWithName:@"Helvetica-Bold" size:13]];
    [alsoLike setTextAlignment:NSTextAlignmentLeft];
    alsoLike.textColor = [UIColor whiteColor];
    [self.view addSubview:alsoLike];
    
    UIImageView* authorPhoto = [[UIImageView alloc] initWithFrame:CGRectMake(12, 306, 78, 78)];
    authorPhoto.image = [UIImage imageNamed:@"SampleProfilePic.png"];
    [self.view addSubview:authorPhoto];
    
    for (int i=0; i<4; i++) {
        UIImageView* star = [[UIImageView alloc] initWithFrame:CGRectMake(26*i+202, 62, 21, 20)];
        star.image = [UIImage imageNamed:@"RatingStarWhite.png"];
        [self.view addSubview:star];
    }
    UIImageView* star = [[UIImageView alloc] initWithFrame:CGRectMake(26*4+202, 62, 21, 20)];
    star.image = [UIImage imageNamed:@"RatingStarTransparent.png"];
    [self.view addSubview:star];
    
    UIImageView* mail = [[UIImageView alloc] initWithFrame:CGRectMake(197, 256, 35, 25)];
    mail.image = [UIImage imageNamed:@"Letter.png"];
    [self.view addSubview:mail];
    
    UIImageView* face = [[UIImageView alloc] initWithFrame:CGRectMake(245, 253, 30, 30)];
    face.image =[UIImage imageNamed:@"Face.png"];
    [self.view addSubview:face];
    
    UIImageView* twitter = [[UIImageView alloc] initWithFrame:CGRectMake(288, 256, 32, 26)];
    twitter.image = [UIImage imageNamed:@"Twitter.png"];
    [self.view addSubview:twitter];
    
    for (int i=0;i<5;i++){
        UIImageView* otherCover = [[UIImageView alloc] initWithFrame:CGRectMake(111*i+12, 447, 103, 137)];
        otherCover.image = [UIImage imageNamed:@"sampleComputerScience.png"];
        [self.view addSubview:otherCover];
    }
    
    UITextView *intro = [[UITextView alloc] initWithFrame:CGRectMake(198, 89, 360, 248)];
    intro.text = @"\"Who invented the computer?\" is not a question with a simple answer. The real answer is that many inventors contributed to the history of computers and that a computer is a complex piece of machinery made up of many parts, each of which can be considered a separate invention.";
    [intro setFont:[UIFont fontWithName:@"Helvetica Neue" size:13]];
    intro.textColor = [UIColor whiteColor];
    intro.backgroundColor = [UIColor clearColor];
    [intro setTextAlignment:NSTextAlignmentLeft];
    intro.userInteractionEnabled = NO;
    intro.editable = NO;
    [self.view addSubview:intro];
    
    UITextView *authorIntro = [[UITextView alloc] initWithFrame:CGRectMake(100, 318, 450, 156)];
    authorIntro.text = @"\"Who invented the computer?\" is not a question with a simple answer. The real answer is that many inventors contributed to the history of computers and that a computer is a complex piece of machinery made up of many parts, each of which can be considered a separate invention.";
    [authorIntro setFont:[UIFont fontWithName:@"Helvetica Neue" size:13]];
    authorIntro.textColor = [UIColor whiteColor];
    authorIntro.backgroundColor = [UIColor clearColor];
    [authorIntro setTextAlignment:NSTextAlignmentLeft];
    authorIntro.userInteractionEnabled = NO;
    authorIntro.editable = NO;
    [self.view addSubview:authorIntro];
    
    UIImageView* purchase = [[UIImageView alloc] initWithFrame:CGRectMake(436, 259, 125, 24)];
    purchase.image = [UIImage imageNamed:@"PurchaseButtion.png"];
    [self.view addSubview:purchase];
    
    UILabel* dollar = [[UILabel alloc] initWithFrame:CGRectMake(436, 259, 125, 24)];
    dollar.text = @"$0.99";
    [dollar setFont:[UIFont fontWithName:@"Helvetica-Bold" size:15]];
    [dollar setTextAlignment:NSTextAlignmentCenter];
    dollar.textColor = [UIColor whiteColor];
    [self.view addSubview:dollar];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
