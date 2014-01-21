//
//  NutritionViewController.m
//  CUDiningView
//
//  Created by Andy on 1/16/14.
//  Copyright (c) 2014 Andy. All rights reserved.
//

#import "NutritionViewController.h"

@interface NutritionViewController ()

@end

@implementation NutritionViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.url = [[NSMutableString alloc] init];
    
    [self.url setString:@"http://andy.cudiningview.com/nutrition.php?id="];
    [self.url appendString:self.foodId];
    [self parseXMLFileAtURL:self.url];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 9;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"NutritionCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSString *nutrient = [[NSString alloc] init];
    if (indexPath.row == 0) {
        nutrient = @"ServingSize";
        cell.detailTextLabel.text = @"Serving Size";
    } else if (indexPath.row == 1) {
        nutrient = @"Calories";
        cell.detailTextLabel.text = @"Calories";
    } else if (indexPath.row == 2) {
        nutrient = @"TotalFat";
        cell.detailTextLabel.text = @"Total Fat";
    } else if (indexPath.row == 3) {
        nutrient = @"Cholesterol";
        cell.detailTextLabel.text = @"Cholesterol";
    } else if (indexPath.row == 4) {
        nutrient = @"SaturatedFat";
        cell.detailTextLabel.text = @"Saturated Fat";
    } else if (indexPath.row == 5) {
        nutrient = @"Protein";
        cell.detailTextLabel.text = @"Protein";
    } else if (indexPath.row == 6) {
        nutrient = @"Carbohydrate";
        cell.detailTextLabel.text = @"Carbohydrate";
    } else if (indexPath.row == 7) {
        nutrient = @"Fiber";
        cell.detailTextLabel.text = @"Fiber";
    } else if (indexPath.row == 8) {
        nutrient = @"Sodium";
        cell.detailTextLabel.text = @"Sodium";
    }
    cell.textLabel.text = [articles[0] valueForKey:nutrient];
    cell.textLabel.textAlignment=UITextAlignmentRight;

    
    return cell;
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
