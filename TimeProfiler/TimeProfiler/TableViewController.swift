//
//  TableViewController.swift
//  TimeProfiler
//
//  Created by steve on 2016-05-29.
//  Copyright © 2016 steve. All rights reserved.
//

import UIKit

//MARK: Model -

struct Data {
  let img: UIImage?
  let string: String
}

class TableViewController: UITableViewController {
  
  // var formatter: DateFormatter?
  
  // var cache:[Int: Data] = [:]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //self.createDateFormatter()
  }

}

//MARK: Data Source - 

extension TableViewController {
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 100
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
    
    let row = indexPath.row
    //
    //    if cache[row] == nil {
    let imgName = String(row % 10 + 1)
    let img = UIImage(named: imgName)
    
    // let dateAsString = formatter?.string(from: Date())
    
    let dateAsString = self.createDateFormatter().string(from: Date())
    
    let data: Data? = Data(img: img, string: dateAsString)
    //      cache[row] = data
    //    }
    //
    //    let data = cache[row]!
    cell.data = data
    
    return cell
  }
}

//MARK: Date Formatter -

extension TableViewController {
  
  private func createDateFormatter()-> DateFormatter {
    let format = DateFormatter.dateFormat(fromTemplate: "yyyy-MM-dd: HH:mm:ss", options: 0, locale: Locale.current)
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter
  }
  
}

