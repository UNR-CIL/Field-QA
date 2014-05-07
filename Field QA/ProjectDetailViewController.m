//
//  ProjectDetailViewController.m
//  Field QA
//
//  Created by John Jusayan on 4/16/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import "ProjectDetailViewController.h"
#import "QADataController.h"
#import "Project.h"
#import "Deployment.h"

@interface ProjectDetailViewController () <QACellConfiguration>

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) QADataController *dataController;
@end

@implementation ProjectDetailViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

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
    self.dataController = [[QADataController alloc] initWithEntityName:@"Deployment" sortDescriptors:@[nameSortDescriptor] inManagedObjectContext:self.managedObjectContext delegate:self];
    
    
    if (self.detailProject == nil) {
        self.detailProject = [NSEntityDescription insertNewObjectForEntityForName:@"Project" inManagedObjectContext:self.managedObjectContext];
    }
    
    self.nameTextField.text = self.detailProject.name;
    self.notesTextView.text = self.detailProject.notes;
    
    if (self.detailProject.creationDate == nil) {
        UIBarButtonItem *saveButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveData:)];
        self.navigationItem.rightBarButtonItem = saveButton;
    }
    
    self.title = @"Project Detail";
}

- (void)saveData:(id)sender
{
    self.detailProject.name = self.nameTextField.text;
    self.detailProject.notes = self.notesTextView.text;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];

    [self saveData:nil];
}

- (void)addContact:(id)sender;
{
    
}

- (IBAction)addDeployment:(id)sender
{
    NSLog(@">>> %@", NSStringFromSelector(_cmd));
    [self performSegueWithIdentifier:@"DeploymentDetailViewController" sender:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.dataController numberOfSectionsInTableView:tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataController tableView:tableView numberOfRowsInSection:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DeploymentCell" forIndexPath:indexPath];
    
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

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Deployments";
}

- (void)configureTableViewCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    
    Deployment *deployment = (Deployment*)[self.dataController objectAtIndexPath:indexPath];
    cell.textLabel.text = deployment.name ? deployment.name : @"A Deployment";
    cell.detailTextLabel.text = [deployment.creationDate description];
}

@end
