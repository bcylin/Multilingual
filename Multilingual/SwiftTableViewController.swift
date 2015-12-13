//
//  SwiftTableViewController.swift
//  Multilingual
//
//  Created by Ben on 13/12/2015.
//  Copyright © 2015 bcylin. All rights reserved.
//

import UIKit

class SwiftTableViewController: UITableViewController {

  private let tableContents = ["Swift", "Objective-C", "JavaScript"]

  // MARK: - UIViewController

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Swift"
    tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: NSStringFromClass(UITableViewCell.self))
    tableView.tableFooterView = UIView()
  }

  // MARK: - TableViewDataSource

  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return tableContents.count
  }

  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier(NSStringFromClass(UITableViewCell.self), forIndexPath: indexPath)
    cell.textLabel?.text = tableContents[indexPath.row]
    cell.textLabel?.textColor = tableContents[indexPath.row] == title ? UIColor.blueColor() : UIColor.blackColor()
    return cell
  }

  // MARK: - UITableViewDelegate

  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    tableView.deselectRowAtIndexPath(indexPath, animated: true)
  }

}
