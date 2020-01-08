//
//  BetViewController.swift
//  WAKA
//
//  Created by Kyle Sejin Yoon on 1/7/20.
//  Copyright © 2020 Kyle Sejin Yoon. All rights reserved.
//

import UIKit

class BetViewController: ViewController
{
  override func viewDidLoad() {
    self.navigationController?.navigationBar.prefersLargeTitles = true
    title = "PLACE YOUR BET"
  }
  @IBAction func didTapBetButton(_ sender: Any)
  {
    dismiss(animated: true)
  }
}
