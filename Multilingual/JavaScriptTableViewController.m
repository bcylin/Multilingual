//
//  JavaScriptTableViewController.m
//  Multilingual
//
//  Created by Ben on 11/12/2015.
//  Copyright © 2015 bcylin. All rights reserved.
//

#import "JavaScriptTableViewController.h"
#import "Multilingual-Swift.h"
#import <React/RCTRootView.h>

@implementation JavaScriptTableViewController

#pragma mark - UIViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.title = @"JavaScript";

  self.view.backgroundColor = [UIColor whiteColor];
  self.edgesForExtendedLayout = UIRectEdgeNone;

  AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
  RCTRootView *reactView = [[RCTRootView alloc] initWithBridge:delegate.bridge
                                                    moduleName:@"LanguagesView"
                                             initialProperties:nil];
  reactView.frame = self.view.bounds;
  reactView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  [self.view addSubview:reactView];
}

@end
