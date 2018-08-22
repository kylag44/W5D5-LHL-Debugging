//
//  DetailViewController.swift
//  AllocationsTest
//
//  Created by steve on 2016-05-28.
//  Copyright © 2016 steve. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  @IBOutlet weak var masterButton: UIButton!
  
  typealias Block = () -> Void
  
  var closure: Block?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.setupView()
  }
  
  func setupView() {
    self.masterButton.setTitleColor(UIColor.randomColor(), for: UIControlState())
    self.view.backgroundColor = UIColor.randomColor()
  }
  
  // closure retains self and self retains this closure
  
  @IBAction func buttonTapped() {
    closure = {
      print(#line, "Some fake stuff")
      self.fakeFunk()
    }
    closure?()
  }
  
  func fakeFunk() {
    print("fake funk")
  }
}
