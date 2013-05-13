//
//  ViewController.m
//  Browser
//
// Created by Admin on 26/03/2013.
//  Copyright (c) 2013 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController;
@synthesize url;
@synthesize webPage;
@synthesize newURL;
@synthesize userID;

- (void)viewDidLoad
{
    self.webPage.scalesPageToFit = YES;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [url release];
    [webPage release];
    [userID release];
    [newURL release];
    [super dealloc];
}

- (IBAction)pushGo:(id)sender {
    NSURL *U =[NSURL URLWithString:url.text];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:U];
    [webPage loadRequest:requestObj];
}

- (IBAction)Push:(id)sender {
    Records *newRecord = [[Records alloc]init];
    newRecord.userID =userID.text;
    newRecord.url = url.text;
    
    
}
@end
