//
//  ViewController.m
//  Multilingual
//
//  Created by Ben on 11/12/2015.
//  Copyright © 2015 bcylin. All rights reserved.
//

#import "ViewController.h"
#import "Multilingual-Swift.h"
#import <React/RCTRootView.h>

@implementation ViewController

#pragma mark - Initialization

- (instancetype)initWithNibName:(nullable NSString *)nibNameOrNil bundle:(nullable NSBundle *)nibBundleOrNil {
  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    self.title = NSStringFromClass(self.class);
  }
  return self;
}

- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder {
  if (self = [super initWithCoder:aDecoder]) {
    self.title = NSStringFromClass(self.class);
  }
  return self;
}

#pragma mark - UIViewController

- (void)viewDidLoad {
  [super viewDidLoad];
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
