//
//  ObjectiveCTableViewController.m
//  Multilingual
//
//  Created by Ben on 13/12/2015.
//  Copyright © 2015 bcylin. All rights reserved.
//

#import "ObjectiveCTableViewController.h"

@interface ObjectiveCTableViewController ()
@property (nonatomic, strong) NSArray *tableContents;
@end

@implementation ObjectiveCTableViewController

- (NSArray *)tableContents {
  if (!_tableContents) {
    _tableContents = @[@"Swift", @"Objective-C", @"JavaScript"];
  }
  return _tableContents;
}

#pragma mark - UIViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.title = @"Objective-C";
  self.tableView.tableFooterView = [[UIView alloc] init];
  [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
}

#pragma mark - TableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.tableContents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class]) forIndexPath:indexPath];
  NSString *text = [self.tableContents[indexPath.row] description];
  cell.textLabel.text = text;
  cell.textLabel.textColor = [self.title isEqualToString:text] ? [UIColor blueColor] : [UIColor blackColor];
  return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
