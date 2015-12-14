//
//  LanguagesViewController.swift
//  Multilingual
//
//  Created by Ben on 13/12/2015.
//  Copyright © 2015 bcylin. All rights reserved.
//

import UIKit

class LanguagesViewController: UITableViewController {

  private struct Row {
    let title: String
    let controllerClass: UIViewController.Type
  }

  private let tableContents = [
    Row(title: "Swift", controllerClass: SwiftTableViewController.self),
    Row(title: "Objective-C", controllerClass: ObjectiveCTableViewController.self),
    Row(title: "JavaScript", controllerClass: JavaScriptTableViewController.self)
  ]

  // MARK: - UIViewController

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Languages"
    tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: NSStringFromClass(UITableViewCell.self))
  }

  // MARK: - TableViewDataSource

  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return tableContents.count
  }

  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier(NSStringFromClass(UITableViewCell.self), forIndexPath: indexPath)
    cell.textLabel?.text = tableContents[indexPath.row].title
    cell.accessoryType = .DisclosureIndicator
    return cell
  }

  override func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
    return "Table view implemented in three languages."
  }

  // MARK: - UITableViewDelegate

  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    let controller = tableContents[indexPath.row].controllerClass.init()
    navigationController?.pushViewController(controller, animated: true)
  }

}
