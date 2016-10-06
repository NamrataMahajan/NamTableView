//
//  ViewController.h
//  NamTabelView
//
//  Created by Namrata on 19/09/16.
//  Copyright © 2016 Namrata. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *tableView;
    NSArray *iosStudents;
    NSArray *androidStudents;
    //UILabel *myLabel;
}

@end

