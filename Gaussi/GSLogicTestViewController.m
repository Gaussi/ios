//
//  GSLogicTestViewController.m
//  Gaussi
//
//  Created by Matt Sun on 5/10/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSLogicTestViewController.h"
#import "GSSearchEngine.h"

@interface GSLogicTestViewController ()

@end

@implementation GSLogicTestViewController

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
    GSSearchEngine *se = [[GSSearchEngine alloc] init];
    //[se insertTestData];
    NSArray *result = [se searchByKeyword:@"ah"];
    NSLog(@"%@",result);
   
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
