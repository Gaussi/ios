//
//  GSTransitionViewController.m
//  Gaussi
//
//  Created by Matt Sun on 5/3/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSTransitionViewController.h"
#import "GSGaussiStoreBar.h"
#import "GSScrollWindow.h"
#import "GSScrollIntro.h"

@interface GSTransitionViewController ()

@end

@implementation GSTransitionViewController

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
    // Do any additional setup after loading the view.
    [UIApplication sharedApplication].statusBarHidden = YES;
    
    UIImageView* bg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 1024, 768)];
    bg.image = [UIImage imageNamed:@"HPBackGroundImageBlured.png"];
    [self.view addSubview:bg];
    
    GSGaussiStoreBar* bar = [[GSGaussiStoreBar alloc] initWithFrame:CGRectMake(0, 669, 10, 20)];
    [self.view addSubview:bar];
    
    GSScrollIntro* scroll = [[GSScrollIntro alloc] initWithFrame:CGRectMake(0, 10, 0, 0)];
    [self.view addSubview:scroll];
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
