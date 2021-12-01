//
//  ViewController.swift
//  Rainbow Road
//
//  Created by faisal on 26/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource=self
        table.delegate=self
        // Do any additional setup after loading the view.
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        switch indexPath.row{
            case 0:
                cell.contentView.subviews[0].backgroundColor=UIColor.red
            case 1:
                cell.contentView.subviews[0].backgroundColor=UIColor.orange
            case 2:
                cell.contentView.subviews[0].backgroundColor=UIColor.yellow
            case 3:
                cell.contentView.subviews[0].backgroundColor=UIColor.green
            case 4:
                cell.contentView.subviews[0].backgroundColor=UIColor.blue
            case 5:
                cell.contentView.subviews[0].backgroundColor=UIColor.purple
            default:
                print("error")
                
        }
        return cell
    }
    
    
}

