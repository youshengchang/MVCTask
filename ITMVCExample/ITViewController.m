//
//  ITViewController.m
//  ITMVCExample
//
//  Created by yousheng chang on 9/12/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import "ITViewController.h"
#import "ITTask.h"
#import "ITTestCell.h"

@interface ITViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *taskArray;

@end

@implementation ITViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    ITTask *task1 = [[ITTask alloc]init];
    task1.title = @"Get breakfast";
    task1.isCompleted = NO;
    
    ITTask *task2 = [[ITTask alloc]init];
    task2.title = @"Go Running";
    task2.isCompleted = YES;
    
    ITTask *task3 = [[ITTask alloc]init];
    task3.title = @"Do Homework";
    task3.isCompleted = NO;
    
    self.taskArray = [@[task1, task2, task3] mutableCopy];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.taskArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"taskCell";
    ITTestCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier forIndexPath:indexPath];
    if(cell == nil){
        cell = [[ITTestCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifier];
        
    }
    ITTask *task = self.taskArray[indexPath.row];
    cell.taskTitle.text = task.title;
    cell.isCompleted = task.isCompleted;
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ITTask *task = self.taskArray[indexPath.row];
    
    task.isCompleted = !task.isCompleted;
    [self.tableView reloadData];
    
}
@end
