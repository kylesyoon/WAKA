//
//  CardsTableViewCell.swift
//  WAKA
//
//  Created by Kyle Sejin Yoon on 1/7/20.
//  Copyright © 2020 Kyle Sejin Yoon. All rights reserved.
//

import UIKit

class CardsTableViewCell: UITableViewCell
{
  @IBOutlet weak var collectionView: UICollectionView!
}

extension CardsTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate
{
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    return collectionView.dequeueReusableCell(withReuseIdentifier: "cardCollectionViewCell", for: indexPath)
  }
}
