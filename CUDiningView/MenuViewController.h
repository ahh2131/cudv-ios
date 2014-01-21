//
//  MenuViewController.h
//  CUDiningView
//
//  Created by Andy on 1/16/14.
//  Copyright (c) 2014 Andy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DiningHallViewController.h"

@interface MenuViewController : DiningHallViewController

@property (strong, nonatomic) IBOutlet UILabel *hall;
@property (nonatomic, assign) int hallNumber;


@end
