//
//  LTVViewController.m
//  LTVColorArrayExample
//
//  Created by Lithu.T.V on 28/11/13.
//  Copyright (c) 2013 Lithu .T.V. All rights reserved.
//


#define NO_OF_CELLS 30
#define HEIGHT_OF_CELLS 20

#import "LTVViewController.h"
#import "LTVColorArray.h"

@interface LTVViewController ()

@end

@implementation LTVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//-----------------------------------------------------------------------------------------------------//
#pragma mark - UITableView Datasource Methods
//-----------------------------------------------------------------------------------------------------//

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return NO_OF_CELLS;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"colorCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.textLabel.text = [NSString stringWithFormat:@"Cell %d", indexPath.row];
    [cell.contentView setBackgroundColor:[[LTVColorArray colorArray]getColorAtIndex:indexPath.row]];
    return cell;
}

//-----------------------------------------------------------------------------------------------------//
#pragma mark - UITableView Delegate Methods
//-----------------------------------------------------------------------------------------------------//


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}



@end
