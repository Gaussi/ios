//
//  GSSplashView.m
//  Gaussi
//
//  Created by Matt Sun on 4/17/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSSplashView.h"

@interface GSSplashView ()

@end

@implementation GSSplashView

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
    
    
    UIImageView* bg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 1024, 768)];
    bg.image = [UIImage imageNamed:@"BackGroundImage.jpg"];
    [self.view addSubview:bg];
    
    UIImageView* bigLogo = [[UIImageView alloc] initWithFrame:CGRectMake(278, 248, 470, 138)];
    bigLogo.image = [UIImage imageNamed:@"BigLogo.png"];
    [self.view addSubview:bigLogo];
    
    UIImageView* focus = [[UIImageView alloc] initWithFrame:CGRectMake(208, 506, 608, 23)];
    focus.image = [UIImage imageNamed:@"FocusOnKnowledgeItself.png"];
    [self.view addSubview:focus];
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
