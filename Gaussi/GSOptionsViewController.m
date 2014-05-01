//
//  GSOptionsViewController.m
//  Gaussi
//
//  Created by Matt Sun on 4/30/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSOptionsViewController.h"

@interface GSOptionsViewController ()

@end

@implementation GSOptionsViewController

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
    
    UIView* spLine1 = [[UIView alloc] initWithFrame:CGRectMake(15, 327, 328, 1)];
    spLine1.backgroundColor = [UIColor colorWithRed:153/255.0f green:153/255.0f blue:153/255.0f alpha:1.0f];
    
    UIView* spLine2 = [[UIView alloc] initWithFrame:CGRectMake(15, 456, 328, 1)];
    spLine2.backgroundColor = [UIColor colorWithRed:153/255.0f green:153/255.0f blue:153/255.0f alpha:1.0f];
    
    UIView* spLine3 = [[UIView alloc] initWithFrame:CGRectMake(15, 585, 328, 1)];
    spLine3.backgroundColor = [UIColor colorWithRed:153/255.0f green:153/255.0f blue:153/255.0f alpha:1.0f];
    
    UIView* spLine4 = [[UIView alloc] initWithFrame:CGRectMake(15, 714, 328, 1)];
    spLine4.backgroundColor = [UIColor colorWithRed:153/255.0f green:153/255.0f blue:153/255.0f alpha:1.0f];
    
    UIView* spLine5 = [[UIView alloc] initWithFrame:CGRectMake(178, 330, 1, 122)];
    spLine5.backgroundColor = [UIColor colorWithRed:153/255.0f green:153/255.0f blue:153/255.0f alpha:1.0f];
    
    UIView* spLine6 = [[UIView alloc] initWithFrame:CGRectMake(178, 459, 1, 122)];
    spLine6.backgroundColor = [UIColor colorWithRed:153/255.0f green:153/255.0f blue:153/255.0f alpha:1.0f];
    
    UIView* spLine7 = [[UIView alloc] initWithFrame:CGRectMake(178, 588, 1, 122)];
    spLine7.backgroundColor = [UIColor colorWithRed:153/255.0f green:153/255.0f blue:153/255.0f alpha:1.0f];
    
    [self.view addSubview:spLine1];
    [self.view addSubview:spLine2];
    [self.view addSubview:spLine3];
    [self.view addSubview:spLine4];
    [self.view addSubview:spLine5];
    [self.view addSubview:spLine6];
    [self.view addSubview:spLine7];
    
    UIImageView* profile = [[UIImageView alloc] initWithFrame:CGRectMake(78, 356, 43, 44)];
    profile.image = [UIImage imageNamed:@"ProfileIcon.png"];
    [self.view addSubview:profile];
    
    UIImageView* knowledgeBase = [[UIImageView alloc] initWithFrame:CGRectMake(237, 356, 55, 45)];
    knowledgeBase.image = [UIImage imageNamed:@"KnowledgeBaseIcon.png"];
    [self.view addSubview:knowledgeBase];
    
    UIImageView* histroy = [[UIImageView alloc] initWithFrame:CGRectMake(77, 486, 44, 44)];
    histroy.image = [UIImage imageNamed:@"ViewHistoryIcon.png"];
    [self.view addSubview:histroy];
    
    UIImageView* create = [[UIImageView alloc] initWithFrame:CGRectMake(238, 485, 50, 45)];
    create.image = [UIImage imageNamed:@"CreateEncyclopediaIcon.png"];
    [self.view addSubview:create];
    
    UIImageView* settings = [[UIImageView alloc] initWithFrame:CGRectMake(75, 612, 48, 48)];
    settings.image = [UIImage imageNamed:@"SettingsIcon.png"];
    [self.view addSubview:settings];
    
    UIImageView* help = [[UIImageView alloc] initWithFrame:CGRectMake(241, 614, 44, 44)];
    help.image = [UIImage imageNamed:@"HelpIcon.png"];
    [self.view addSubview:help];
    
    UILabel* profileLabel = [[UILabel alloc] initWithFrame:CGRectMake(17, 416, 164, 16)];
    profileLabel.text = @"Profile";
    [profileLabel setFont:[UIFont fontWithName:@"Helvetica Neue" size:13]];
    [profileLabel setTextAlignment:NSTextAlignmentCenter];
    profileLabel.textColor = [UIColor colorWithRed:51/255.0f green:51/255.0f blue:51/255.0f alpha:1.0f];
    [self.view addSubview:profileLabel];
    
    UILabel* knowledgeBaselabel = [[UILabel alloc] initWithFrame:CGRectMake(182, 416, 164, 16)];
    knowledgeBaselabel.text = @"Knowledge Base";
    [knowledgeBaselabel setFont:[UIFont fontWithName:@"Helvetica Neue" size:13]];
    knowledgeBaselabel.textColor = [UIColor colorWithRed:51/255.0f green:51/255.0f blue:51/255.0f alpha:1.0f];
    [knowledgeBaselabel setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:knowledgeBaselabel];

    UILabel* historyLabel = [[UILabel alloc] initWithFrame:CGRectMake(17, 545, 164, 16)];
    historyLabel.text = @"View Histroy";
    [historyLabel setFont:[UIFont fontWithName:@"Helvetica Neue" size:13]];
    [historyLabel setTextAlignment:NSTextAlignmentCenter];
    historyLabel.textColor = [UIColor colorWithRed:51/255.0f green:51/255.0f blue:51/255.0f alpha:1.0f];
    [self.view addSubview:historyLabel];
    
    UILabel* createLabel = [[UILabel alloc] initWithFrame:CGRectMake(182, 545, 164, 16)];
    createLabel.text = @"Settings";
    [createLabel setTextAlignment:NSTextAlignmentCenter];
    [createLabel setFont:[UIFont fontWithName:@"Helvetica Neue" size:13]];
    createLabel.textColor = [UIColor colorWithRed:51/255.0f green:51/255.0f blue:51/255.0f alpha:1.0f];
    [self.view addSubview:createLabel];
    
    UILabel* settingLabel = [[UILabel alloc] initWithFrame:CGRectMake(17, 674, 164, 16)];
    settingLabel.text = @"Settings";
    [settingLabel setTextAlignment:NSTextAlignmentCenter];
    [settingLabel setFont:[UIFont fontWithName:@"Helvetica Neue" size:13]];
    settingLabel.textColor = [UIColor colorWithRed:51/255.0f green:51/255.0f blue:51/255.0f alpha:1.0f];
    [self.view addSubview:settingLabel];
    
    UILabel* helpLabel = [[UILabel alloc] initWithFrame:CGRectMake(182, 674, 164, 16)];
    helpLabel.text = @"Help";
    [helpLabel setFont:[UIFont fontWithName:@"Helvetica Neue" size:13]];
    [helpLabel setTextAlignment:NSTextAlignmentCenter];
    helpLabel.textColor = [UIColor colorWithRed:51/255.0f green:51/255.0f blue:51/255.0f alpha:1.0f];
    [self.view addSubview:helpLabel];
    
    UILabel* lastRead = [[UILabel alloc] initWithFrame:CGRectMake(34, 48, 106, 22)];
    lastRead.text = @"Last Read";
    [lastRead setFont:[UIFont fontWithName:@"Helvetica Neue" size:18]];
    [lastRead setTextAlignment:NSTextAlignmentLeft];
    lastRead.textColor = [UIColor colorWithRed:51/255.0f green:51/255.0f blue:51/255.0f alpha:1.0f];
    [self.view addSubview:lastRead];
    
    UILabel* date = [[UILabel alloc] initWithFrame:CGRectMake(184, 91, 100, 16)];
    date.text = @"May 22nd, 2014";
    [date setFont:[UIFont fontWithName:@"Helvetica-Oblique" size:13]];
    [date setTextAlignment:NSTextAlignmentLeft];
    date.textColor = [UIColor colorWithRed:51/255.0f green:51/255.0f blue:51/255.0f alpha:1.0f];
    [self.view addSubview:date];
    
    UILabel* encyclopedianame = [[UILabel alloc] initWithFrame:CGRectMake(184, 110, 169, 16)];
    encyclopedianame.text = @"Mysterious Ancient Egypt";
    [encyclopedianame setFont:[UIFont fontWithName:@"Helvetica-Bold" size:13]];
    [encyclopedianame setTextAlignment:NSTextAlignmentLeft];
    encyclopedianame.textColor = [UIColor colorWithRed:51/255.0f green:51/255.0f blue:51/255.0f alpha:1.0f];
    [self.view addSubview:encyclopedianame];
    
    UILabel* chapter = [[UILabel alloc] initWithFrame:CGRectMake(184, 127, 70, 15)];
    chapter.text = @"Chapter 02";
    [chapter setFont:[UIFont fontWithName:@"Helvetica" size:13]];
    [chapter setTextAlignment:NSTextAlignmentLeft];
    chapter.textColor = [UIColor colorWithRed:51/255.0f green:51/255.0f blue:51/255.0f alpha:1.0f];
    [self.view addSubview:chapter];
    
    UIImageView* cover = [[UIImageView alloc] initWithFrame:CGRectMake(34, 91, 130, 173)];
    cover.image = [UIImage imageNamed:@"SampleCover.png"];
    [self.view addSubview:cover];
    
    UIImageView* right = [[UIImageView alloc] initWithFrame:CGRectMake(217, 240, 30, 27)];
    right.image = [UIImage imageNamed:@"continue.png"];
    [self.view addSubview:right];
    
    UILabel* continueLabel = [[UILabel alloc] initWithFrame:CGRectMake(249, 242, 73, 22)];
    continueLabel.text = @"Continue";
    [continueLabel setFont:[UIFont fontWithName:@"Helvetica" size:18]];
    [continueLabel setTextAlignment:NSTextAlignmentLeft];
    continueLabel.textColor = [UIColor colorWithRed:51/255.0f green:51/255.0f blue:51/255.0f alpha:1.0f];
    [self.view addSubview:continueLabel];
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
