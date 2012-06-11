//
//  TodoViewController.h
//  Todo
//
//  Created by Arbie Samong on 6/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TodoViewController : UITableViewController {
    NSMutableArray *todoItems;
}

@property (strong, nonatomic) UIBarButtonItem *createButton;

- (IBAction)create:(UIBarButtonItem *)sender;

@end
