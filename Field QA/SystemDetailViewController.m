//
//  SystemDetailViewController.m
//  Field QA
//
//  Created by John Jusayan on 6/27/14.
//  Copyright (c) 2014 CSE UNR. All rights reserved.
//

#import "SystemDetailViewController.h"
#import "System.h"
#import "NSString+TNNormalize.h"

@interface SystemDetailViewController ()

@end

@implementation SystemDetailViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    if (self.detailSystem == nil) {
        self.detailSystem = [NSEntityDescription insertNewObjectForEntityForName:@"System" inManagedObjectContext:self.managedObjectContext];
        self.detailSystem.deployment = self.itemSelectionDelegate.currentDeployment;
    }
    [self updateTextFields];
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel:)];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done:)];
    self.navigationItem.leftBarButtonItem = cancelButton;
    self.navigationItem.rightBarButtonItem = doneButton;
}

- (void)updateTextFields
{
    self.nameTextField.text = self.detailSystem.name;
}

- (void)readFromTextFields
{
    self.detailSystem.name = [self.nameTextField.text tn_cleanString];
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
