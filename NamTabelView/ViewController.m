//
//  ViewController.m
//  NamTabelView
//
//  Created by Namrata on 19/09/16.
//  Copyright © 2016 Namrata. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //myLabel=[[UILabel alloc]initWithFrame:CGRectMake(300, 20, 50, 20)];
  //  myLabel.backgroundColor=[UIColor cyanColor];
  //  myLabel.text=@"gread";
  //  myLabel.font=[UIFont boldSystemFontOfSize:20];
   // myLabel.textColor=[UIColor redColor];
    iosStudents= [[NSArray alloc]initWithObjects:@"Namrata",@"Kalyani",@"Divya",@"Mrunal",@"Pragati" ,nil];
    
    
    androidStudents= [[NSArray alloc]initWithObjects:@"Jagu",@"Jivan",@"Gunjan",@"Nilesh" ,nil];
    
    
    tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen]bounds].size.width, [[UIScreen mainScreen]bounds].size.height) style:UITableViewStyleGrouped];
    tableView.dataSource=self;
    tableView.delegate=self;
    [self.view addSubview:tableView];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0) {
        return iosStudents.count;
    }
    else if(section==1)
    {
        return androidStudents.count;
    }
    else
    {
        return 0;
    }
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Besties"];
    

    NSString *studentName;
    NSString *batch;
    
    if (indexPath.section==0) {
        studentName=[iosStudents objectAtIndex:indexPath.row];
    //    [cell.viewForFirstBaselineLayout addSubview:myLabel];
        batch=@"ios";
    }
    else if(indexPath.section==1)
    {
        studentName=[androidStudents objectAtIndex:indexPath.row];
   //     [cell.viewForLastBaselineLayout addSubview:myLabel];
        batch=@"Android";
    }
    else
    {
        studentName=@"NA";
        batch=@"NA";
    }
    cell.textLabel.text=studentName;
    
    
    cell.detailTextLabel.text=batch;
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
