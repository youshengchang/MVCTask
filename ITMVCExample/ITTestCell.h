//
//  ITTestCell.h
//  ITMVCExample
//
//  Created by yousheng chang on 9/12/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ITTestCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *taskTitle;
@property (assign, nonatomic) BOOL isCompleted;

@end
