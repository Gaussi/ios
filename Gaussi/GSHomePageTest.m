//
//  GSHomePageTest.m
//  Gaussi
//
//  Created by Matt Sun on 4/28/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSHomePageTest.h"
#import "GSScrollWindow.h"

@interface GSHomePageTest ()

@end

@implementation GSHomePageTest

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
    
    // Scroll Ads
    UIImageView* bg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 460, 1024, 768)];
    bg.image = [UIImage imageNamed:@"HPBackGroundImage.jpg"];
    [self.view addSubview:bg];
    GSScrollWindow* ads = [[GSScrollWindow alloc] initWithFrame:CGRectMake(0, 11, 1024, 282)];
    [self.view addSubview:ads];
    
    // Logo
    UIImageView* logo = [[UIImageView alloc] initWithFrame:CGRectMake(24, 7, 126, 38)];
    logo.image = [UIImage imageNamed:@"HPMainPageLogo.png"];
    [self.view addSubview:logo];
    
    // More Option
    UIButton* side = [[UIButton alloc] initWithFrame:CGRectMake(972, 16, 21, 17)];
    [side setImage:[UIImage imageNamed:@"HPMoreOptionsButton.png"] forState:UIControlStateNormal];
    [self.view addSubview:side];
    
    // line
    UIView* line = [[UIView alloc] initWithFrame:CGRectMake(946, 12, 1, 26)];
    line.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:line];
    
    // Individualized Knowledge Base
    UIImageView* sentence = [[UIImageView alloc] initWithFrame:CGRectMake(285, 199, 456, 17)];
    sentence.image = [UIImage imageNamed:@"HPIndividualizedKnowledgeBase.png"];
    [self.view addSubview:sentence];
    
    // Search bar
    UIImageView* searchBar = [[UIImageView alloc] initWithFrame:CGRectMake(285, 232, 425, 25)];
    searchBar.image = [UIImage imageNamed:@"HPSearchArea.png"];
    [self.view addSubview:searchBar];
    
    // Search button
    UIButton* searchButton = [[UIButton alloc] initWithFrame:CGRectMake(720, 234, 21, 21)];
    [searchButton setImage:[UIImage imageNamed:@"HPMagnifyingGlass (SearchButton).png"] forState:UIControlStateNormal];
    [self.view addSubview:searchButton];
    
    // drag handle
    UIImageView* dragHandle = [[UIImageView alloc] initWithFrame:CGRectMake(498, 438, 29, 12)];
    dragHandle.image = [UIImage imageNamed:@"HPPullUpButton.png"];
    [self.view addSubview:dragHandle];
    
    // User Name
    UILabel* name = [[UILabel alloc] initWithFrame:CGRectMake(921-155, 16, 155, 22)];
    name.text = @"Junfeng Sun";
    [name setTextAlignment:NSTextAlignmentRight];
    [name setFont:[UIFont fontWithName:@"Helvetica Neue" size:18]];
    name.textColor = [UIColor whiteColor];
    [self.view addSubview:name];

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
