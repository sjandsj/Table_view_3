//
//  DetailViewController.swift
//  TableView2
//
//  Created by mac on 30/05/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var dlabel1: UIImageView!
    @IBOutlet weak var Dl1: UILabel!
    @IBOutlet weak var dl2: UILabel!
    var str1:String!
    var str2:String!
    var imag:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Dl1.text = str1
        dl2.text = str2
        dlabel1.image = imag
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
