//
//  GSTestViewController.m
//  Gaussi
//
//  Created by Matt Sun on 4/19/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSTestViewController.h"
#import "GSGaussiStoreBar.h"
#import "GSGaussiStoreSubBar.h"
#import "GSGaussiStoreLeftBar.h"
#import "GSGaussiStoreCell.h"

@interface GSTestViewController ()

@end

@implementation GSTestViewController

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
    UIImageView *bg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 1024, 768)];
    bg.image = [UIImage imageNamed:@"HPBackGroundImageBlured.png"];
    [self.view addSubview:bg];
    
    GSGaussiStoreBar* bar = [[GSGaussiStoreBar alloc] initWithFrame:CGRectMake(0, 49, 10, 20)];
    [self.view addSubview:bar];
    
    // subbar
    GSGaussiStoreSubBar *subBar = [[GSGaussiStoreSubBar alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    [self.view addSubview:subBar];
    
    // left bar
    GSGaussiStoreLeftBar *leftBar = [[GSGaussiStoreLeftBar alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    [self.view addSubview:leftBar];
    
    // Table View
    UITableView* tb = [[UITableView alloc] initWithFrame:CGRectMake(220, 198, 779, 561)];
    tb.backgroundColor =[UIColor clearColor];
    tb.separatorColor = [UIColor colorWithWhite:1 alpha:0.2];
    tb.scrollEnabled = YES;
    tb.rowHeight = 234;
    tb.showsVerticalScrollIndicator = NO;
    tb.dataSource = self;
    tb.delegate = self;
    tb.userInteractionEnabled = YES;
    [self.view addSubview:tb];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GSGaussiStoreCell *cell = (GSGaussiStoreCell*)[tableView dequeueReusableCellWithIdentifier:@"storeCell"];
    if (cell == nil)
        cell = [[GSGaussiStoreCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"storeCell"];
    [cell dataInit];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
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
