//
//  TodoViewController.m
//  Todo
//
//  Created by Arbie Samong on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TodoViewController.h"

@implementation TodoViewController

@synthesize createButton = _createButton;

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
    // Do any additional setup after loading the view from its nib.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    UIBarButtonItem *createButton = [[UIBarButtonItem alloc] initWithTitle:@"Create" style:UIBarButtonSystemItemAdd target:self action:@selector(create:)];
    self.navigationItem.rightBarButtonItem = createButton;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)create:(UIBarButtonItem *)sender {
    UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"This is an alert" message:@"Create!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [myAlert show];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
    NSString *tempString = [NSString stringWithFormat:@"Row %i", indexPath.row];
    cell.textLabel.text = tempString;
    cell.detailTextLabel.text = @"Edit";
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

#pragma mark - Table view delegate
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"This is an alert" message:@"Whaddup!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [myAlert show];
}

@end
