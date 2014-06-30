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

#import "ProjectsViewController.h"
#import "Project.h"
#import "DeploymentsViewController.h"
#import "Deployment.h"
#import "SystemsViewController.h"
#import "System.h"
#import "LogicalDevicesViewController.h"
#import "LogicalDevice.h"

@interface CurrentComponentViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) NSManagedObjectContext *mainManagedObjectContext;
@property (strong, nonatomic) UIPopoverController *masterPopoverController;

@property (nonatomic) UIPopoverController *projectsPopoverController;
@property (nonatomic) UIPopoverController *deploymentsPopoverController;
@property (nonatomic) UIPopoverController *systemsPopoverController;
@property (nonatomic) UIPopoverController *logicalComponentsPopoverController;

@property (nonatomic) Project *currentProject;
@property (nonatomic) Deployment *currentDeployment;
@property (nonatomic) System *currentSystem;
@property (nonatomic) LogicalDevice *currentLogicalDevice;

- (void)configureView;

@end

@implementation CurrentComponentViewController


- (void)awakeFromNib
{
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    self.mainManagedObjectContext = appDelegate.managedObjectContext;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    

    
    self.title = @"Component Detail";
    [self configureView];
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@">>> indexPath %i", indexPath.row);
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main_iPad" bundle:nil];

    switch (indexPath.row) {
        case 0: {
            ProjectsViewController *projectsViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"ProjectsViewController"];
            UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:projectsViewController];
            UIPopoverController *popoverController = [[UIPopoverController alloc] initWithContentViewController:navigationController];
            self.projectsPopoverController = popoverController;
            projectsViewController.delegate = self;
            [self.projectsPopoverController presentPopoverFromRect:cell.bounds inView:cell permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
            
            break;
        }
        case 1: {
            DeploymentsViewController *deploymentsViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"DeploymentsViewController"];
            UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:deploymentsViewController];
            UIPopoverController *popoverController = [[UIPopoverController alloc] initWithContentViewController:navigationController];
            self.deploymentsPopoverController = popoverController;
            deploymentsViewController.delegate = self;
            [self.deploymentsPopoverController presentPopoverFromRect:cell.bounds inView:cell permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
            break;
        }
        case 2: {
            SystemsViewController *systemsViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"SystemsViewController"];
            UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:systemsViewController];
            UIPopoverController *popoverController = [[UIPopoverController alloc] initWithContentViewController:navigationController];
            self.systemsPopoverController = popoverController;
            systemsViewController.delegate = self;
            [self.systemsPopoverController presentPopoverFromRect:cell.bounds inView:cell permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
            break;
        }
        case 3: {
            LogicalDevicesViewController *logicalComponentsViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"LogicalComponentsViewController"];
            UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:logicalComponentsViewController];
            UIPopoverController *popoverController = [[UIPopoverController alloc] initWithContentViewController:navigationController];
            self.logicalComponentsPopoverController = popoverController;
            logicalComponentsViewController.delegate = self;
            [self.logicalComponentsPopoverController presentPopoverFromRect:cell.bounds inView:cell permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
            break;
        }
        default:
            break;
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


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

#pragma mark - Managing the detail item

- (void)setDetailComponent:(Component *)detailComponent
{
    if (_detailComponent != detailComponent) {
        _detailComponent = detailComponent;
        
        // Update the view.
        [self configureView];
    }
    
    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    
    if (self.detailComponent) {
    }
}


#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Components", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

#pragma mark - FQAItemSelection

- (void)didSelectItem:(id)item fromViewController:(UIViewController *)viewController
{
    if ([item isKindOfClass:[Project class]]) {
        [self.projectsPopoverController dismissPopoverAnimated:YES];
        
    }
    else if ([item isKindOfClass:[Deployment class]]) {
        [self.deploymentsPopoverController dismissPopoverAnimated:YES];
    }
    else if ([item isKindOfClass:[System class]]) {
        [self.systemsPopoverController dismissPopoverAnimated:YES];
    }
    else if ([item isKindOfClass:[LogicalDevice class]]) {
        [self.logicalComponentsPopoverController dismissPopoverAnimated:YES];
    }

}

- (void)setCurrentProject:(Project *)currentProject
{
    _currentProject = currentProject;
    
    
    if (self.detailComponent.logicalDevice && self.detailComponent.logicalDevice == self.currentLogicalDevice &&
        self.detailComponent.logicalDevice.system && self.detailComponent.logicalDevice.system == self.currentSystem &&
        self.detailComponent.logicalDevice.system.deployment && self.detailComponent.logicalDevice.system.deployment == self.currentDeployment) {
        
        self.detailComponent.logicalDevice.system.deployment.project = _currentProject;
    }
    else {
        NSLog(@"Current project cannot be set because of incomplete or inconsistent hierarchy");
    }
}

- (void)setCurrentDeployment:(Deployment *)currentDeployment
{
    _currentDeployment = currentDeployment;
    
    if (self.detailComponent.logicalDevice && self.detailComponent.logicalDevice == self.currentLogicalDevice &&
        self.detailComponent.logicalDevice.system && self.detailComponent.logicalDevice.system == self.currentSystem) {
        self.detailComponent.logicalDevice.system.deployment = _currentDeployment;
    }
    else {
        NSLog(@"Current project cannot be set because of incomplete or inconsistent hierarchy");
    }
}

- (void)setCurrentSystem:(System *)currentSystem
{
    _currentSystem = currentSystem;
    
    if (self.detailComponent.logicalDevice && self.detailComponent.logicalDevice == self.currentLogicalDevice) {
        self.detailComponent.logicalDevice.system = _currentSystem;
    }
    else {
        NSLog(@"Current project cannot be set because of incomplete or inconsistent hierarchy");
    }
}

- (void)setCurrentLogicalDevice:(LogicalDevice *)currentLogicalDevice
{
    _currentLogicalDevice = currentLogicalDevice;
    
    self.detailComponent.logicalDevice = _currentLogicalDevice;
}


@end
