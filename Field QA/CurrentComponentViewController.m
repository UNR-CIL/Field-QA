//
//  ComponentDetailViewController.m
//  Field QA
//
//  Created by John Jusayan on 4/16/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import "CurrentComponentViewController.h"
#import "Component.h"
#import "ServiceEntry.h"

@interface CurrentComponentViewController ()

@property (nonatomic) NSManagedObjectContext *managedObjectContext;
@property (nonatomic) QADataController *dataController;

@end

@implementation CurrentComponentViewController


- (void)awakeFromNib
{
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    self.managedObjectContext = appDelegate.managedObjectContext;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    NSSortDescriptor *nameSortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    self.dataController = [[QADataController alloc] initWithEntityName:@"ServiceEntry" sortDescriptors:@[nameSortDescriptor] inManagedObjectContext:self.managedObjectContext delegate:self];
    
    
    if (self.detailComponent == nil) {
        self.detailComponent = [NSEntityDescription insertNewObjectForEntityForName:@"Component" inManagedObjectContext:self.managedObjectContext];
    }
    
    self.nameTextField.text = self.detailComponent.name;
    self.notesTextView.text = self.detailComponent.notes;
    
    if (self.detailComponent.creationDate == nil) {
        UIBarButtonItem *saveButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveData:)];
        self.navigationItem.rightBarButtonItem = saveButton;
    }
    
    self.title = @"Component Detail";
}

- (void)saveData:(id)sender
{
    self.detailComponent.name = self.nameTextField.text;
    self.detailComponent.notes = self.notesTextView.text;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [self saveData:nil];
}

- (void)addContact:(id)sender;
{
    
}

- (IBAction)addServiceEntry:(id)sender
{
#warning Fix this
    NSLog(@">>> %@", NSStringFromSelector(_cmd));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSLog(@"indexPath %@", indexPath);
    
    [self configureTableViewCell:cell atIndexPath:indexPath];
    
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
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
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

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)configureTableViewCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        [cell.textLabel setText:@"Project"];
    }
    else if (indexPath.row == 1) {
        [cell.textLabel setText:@"Deployment"];
    }
    else if (indexPath.row == 2) {
        [cell.textLabel setText:@"System"];
    }
    else if (indexPath.row == 3) {
        [cell.textLabel setText:@"Logical Component"];
    }

}

@end
