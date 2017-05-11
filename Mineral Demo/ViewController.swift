//
//  ViewController.swift
//  Mineral Demo
//
//  Created by draveness on 13/04/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Absolute"
        default:
            cell.textLabel?.text = "Relative"
        }
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        switch index {
        case 0:
            self.navigationController?.pushViewController(AbsoluteViewController(), animated: true)
        default:
            self.navigationController?.pushViewController(RelativeViewController(), animated: true)
        }
    }
}
