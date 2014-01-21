//
//  DiningHallViewController.h
//  CUDiningView
//
//  Created by Andy on 1/15/14.
//  Copyright (c) 2014 Andy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DiningHallViewController : UITableViewController {
    //DetailViewController *detailViewController;
    NSXMLParser *rssParser;
    NSMutableArray *articles;
    NSMutableDictionary *item;
    NSString *currentElement;
    NSMutableString *ElementValue;
    BOOL errorParsing;
}
//@property (nonatomic, retain) IBOutlet DetailViewController *detailViewController;


- (void)parseXMLFileAtURL:(NSString *)URL;



@end
