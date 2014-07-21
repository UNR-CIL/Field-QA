//
//  ProjectDetailViewController.m
//  Field QA
//
//  Created by John Jusayan on 6/26/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//


#import "ProjectDetailViewController.h"
#import "NSString+TNNormalize.h"
#import "Project.h"
#import "TextFieldTableViewCell.h"

@interface ProjectDetailViewController ()

@property (nonatomic, assign) BOOL displayingDatePicker;

@property (nonatomic) NSArray *propertyNames;
@property (nonatomic) NSArray *displayNames;
@property (nonatomic) NSArray *labelNames;

@end

@implementation ProjectDetailViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    

    if (self.detailProject == nil) {
        self.detailProject = [NSEntityDescription insertNewObjectForEntityForName:@"Project" inManagedObjectContext:self.managedObjectContext];
    }
    [self updateTextFields];
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel:)];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done:)];
    self.navigationItem.leftBarButtonItem = cancelButton;
    self.navigationItem.rightBarButtonItem = doneButton;
    
    UINib *cellNib = [UINib nibWithNibName:@"TextFieldTableViewCell" bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:@"TextFieldTableViewCell"];
    
    self.propertyNames = @[@"name", @"notes", @"creationDate"];
    self.displayNames = @[@"Name", @"Notes", @"Creation Date"];
    self.labelNames = @[@"nameLabel", @"notesLabel", @"creationDateLabel"];
}

- (void)updateTextFields
{
    self.nameTextField.text = self.detailProject.name;
}

- (void)readFromTextFields
{
    self.detailProject.name = [self.nameTextField.text tn_cleanString];
}

- (void)cancel:(id)sender
{
    
}

- (void)done:(id)sender
{
    [self readFromTextFields];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.displayingDatePicker) return self.propertyNames.count + 1;
    
    return self.propertyNames.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TextFieldTableViewCell" forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (void)configureCell:(UITableViewCell*)aCell atIndexPath:(NSIndexPath*)indexPath
{
    TextFieldTableViewCell *cell = (TextFieldTableViewCell*)aCell;
    
    if (self.displayingDatePicker) {

    }
    else {
        switch (indexPath.row) {
            case 0:
                self.nameTextField = cell.propertyTextField;
                break;
            case 1:
                break;
            case 2:
                break;
            default:
                break;
        }
        
        cell.propertyNameLabel.text = self.displayNames[indexPath.row];
        cell.propertyTextField.text = [self.detailProject valueForKey:self.propertyNames[indexPath.row]];
    }
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

@end
