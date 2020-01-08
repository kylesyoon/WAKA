//
//  GameTableViewCell.swift
//  WAKA
//
//  Created by Kyle Sejin Yoon on 1/7/20.
//  Copyright © 2020 Kyle Sejin Yoon. All rights reserved.
//

import UIKit

class GameTableViewCell: UITableViewCell
{
  @IBOutlet weak var awayImageView: UIImageView!
  @IBOutlet weak var awayLabel: UILabel!
  @IBOutlet weak var homeImageView: UIImageView!
  @IBOutlet weak var homeLabel: UILabel!
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var timeLabel: UILabel!
  @IBOutlet weak var socialLabel: UILabel!

  override func awakeFromNib() {
    super.awakeFromNib()
    awayLabel.text = "AWAY TEAM"
    homeLabel.text = "HOME TEAM"
    dateLabel.text = "Jan 13"
    timeLabel.text = "6:00 PM"
    socialLabel.text = "John Curia and 6 others bet on this game"
  }
}
