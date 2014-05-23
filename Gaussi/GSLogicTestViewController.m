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

@property (nonatomic, strong) GSSearchEngine* se;
@property (nonatomic, strong) NSMutableArray* result;

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
    UIImageView* bg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 1024, 768)];
    bg.image = [UIImage imageNamed:@"HPBackGroundImageBlured.png"];
    //[self.view addSubview:bg];
    
    UIImageView* searchBG = [[UIImageView alloc] initWithFrame:CGRectMake(332, 227, 425, 25)];
    searchBG.image = [UIImage imageNamed:@"HPSearchArea.png"];
    [self.view addSubview:searchBG];
    
    UITextField* sb = [[UITextField alloc]initWithFrame:CGRectMake(352, 227, 385, 25)];
    sb.borderStyle = UITextBorderStyleNone;
    //sb.background = [UIImage imageNamed:@"HPSearchArea.png"];
    sb.delegate = self;
    [self.view addSubview:sb];
    
    /*
    UIImageView* searchButton = [[UIImageView alloc] initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, 21, 21)];
    searchButton.image = [UIImage imageNamed:@"HPMagnifyingGlass (SearchButton).png"];
    [self.view addSubview:searchButton];
    */
     
    self.se = [[GSSearchEngine alloc] init];
    [self.se insertTestData];
    //self.result = [NSMutableArray arrayWithArray:[self.se searchByKeyword:@"ah"]];
    //NSLog(@"%@",self.result);
    UITableView* searchResult = [[UITableView alloc] initWithFrame:CGRectMake(352, 257, 385, 300)];
    searchResult.delegate = self;
    searchResult.dataSource = self;
    searchResult.tag = 789;
    searchResult.backgroundColor = [UIColor colorWithWhite:1 alpha:0.2];
    searchResult.hidden = YES;
    [self.view addSubview:searchResult];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    UITableView* tb = [self.view viewWithTag:789];
    tb.hidden = NO;
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    UITableView* tb = [self.view viewWithTag:789];
    tb.hidden = YES;
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.result = [NSMutableArray arrayWithArray:[self.se searchByKeyword:string]];
    if (range.length==0) {
        self.result = [NSMutableArray arrayWithArray:[self.se searchByKeyword:[NSString stringWithFormat:@"%@%@",textField.text,string]]];
    }
    else if (range.length+range.location==textField.text.length){
        //NSRange newRange = NSMakeRange(0, range.location);
        self.result = [NSMutableArray arrayWithArray:[self.se searchByKeyword:[textField.text substringToIndex:range.location]]];
    }
    else{
        
        self.result = [NSMutableArray arrayWithArray:[self.se searchByKeyword:[NSString stringWithFormat:@"%@%@%@",
                                                                               string,
                                                                               [textField.text substringToIndex:range.location],[textField.text substringWithRange:NSMakeRange(range.location+range.length, textField.text.length-range.location-range.length)]]]];
    }
    UITableView* tb = [self.view viewWithTag:789];
    [tb reloadData];
    return YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField{
    [self.result removeAllObjects];
    UITableView* tb = [self.view viewWithTag:789];
    [tb reloadData];
    return YES;
}

/*
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    self.result = [NSMutableArray arrayWithArray:[self.se searchByKeyword:searchText]];
    UITableView* tb = [self.view viewWithTag:789];
    [tb reloadData];
    NSLog(searchText);
}
*/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.result.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = [self.result objectAtIndex:indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor whiteColor];
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
