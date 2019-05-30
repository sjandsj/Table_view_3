//
//  ViewController.swift
//  TableView2
//
//  Created by mac on 30/05/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    var a1 = ["1-)","2-)","3-)","4-)","5-)","6-)","7-)"]
    var a2 = ["PhoneBook","Music","Games","Video Player","File Manager","Video Player","Settings"]
    var pics = [#imageLiteral(resourceName: "c5"),#imageLiteral(resourceName: "c6"),#imageLiteral(resourceName: "c7"),#imageLiteral(resourceName: "c4"),#imageLiteral(resourceName: "c3"),#imageLiteral(resourceName: "c2"),#imageLiteral(resourceName: "c1")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return a1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier:"cell") as! TableViewCell
        cell.label1.text = a1[indexPath.row]
        cell.label2.text = a2[indexPath.row]
        cell.img.image = pics[indexPath.row]
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detail.str1 = a1[indexPath.row]
        detail.str2 = a2[indexPath.row]
        detail.imag = pics[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }

}

