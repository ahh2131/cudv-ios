//
//  NutritionViewController.h
//  CUDiningView
//
//  Created by Andy on 1/16/14.
//  Copyright (c) 2014 Andy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DiningHallViewController.h"


@interface NutritionViewController : DiningHallViewController

@property (nonatomic, strong) NSMutableString *url;
@property (nonatomic, assign) NSString *foodId;


@end
