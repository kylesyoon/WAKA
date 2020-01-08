//
//  FeedViewController.swift
//  WAKA
//
//  Created by Kyle Sejin Yoon on 1/7/20.
//  Copyright © 2020 Kyle Sejin Yoon. All rights reserved.
//

import UIKit

class FeedViewController: ViewController
{
  @IBOutlet weak var tableView: UITableView!

  override func viewDidLoad()
  {
    title = "Feed"
//    tableView.rowHeight = UITableView.automaticDimension
  }
}

extension FeedViewController: UITableViewDataSource, UITableViewDelegate
{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch indexPath.row {
    case 0:
      guard let titleTableViewCell = tableView.dequeueReusableCell(withIdentifier: "titleTableViewCell") else { return UITableViewCell() }
      titleTableViewCell.textLabel?.text = "CURRENT BETS"
      return titleTableViewCell
    case 1:
      guard let cardTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cardsTableViewCell") as? CardsTableViewCell else { return UITableViewCell() }
      return cardTableViewCell;
    case 2:
      guard let titleTableViewCell = tableView.dequeueReusableCell(withIdentifier: "titleTableViewCell") else { return UITableViewCell() }
      titleTableViewCell.textLabel?.text = "TRENDING GAMES"
      return titleTableViewCell
    case 3:
      fallthrough
    default:
    guard let gameTableViewCell = tableView.dequeueReusableCell(withIdentifier: "gameTableViewCell") as? GameTableViewCell else { return UITableViewCell() }
    return gameTableViewCell
    }
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if indexPath.row > 2 {
      guard let nav = storyboard?.instantiateViewController(identifier: "betViewControllerNavigationController") else { return }
      present(nav, animated: true)
    }
  }
}
