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
    // Do any additional setup after loading the view.
    UIImageView* bg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 1024, 768)];
    bg.image = [UIImage imageNamed:@"HPBackGroundImage.jpg"];
    [self.view addSubview:bg];
    GSScrollWindow* ads = [[GSScrollWindow alloc] initWithFrame:CGRectMake(0, 11, 1024, 282)];
    [self.view addSubview:ads];
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
