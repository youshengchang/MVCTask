//
//  ITTestCell.m
//  ITMVCExample
//
//  Created by yousheng chang on 9/12/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import "ITTestCell.h"

@implementation ITTestCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setIsCompleted:(BOOL)isCompleted
{
    if(isCompleted){
        self.taskTitle.textColor = [UIColor greenColor];
    }else{
        self.taskTitle.textColor = [UIColor redColor];
    }
}

@end
