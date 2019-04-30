//
//  ViewController.swift
//  simpleTableView
//
//  Created by dit08 on 2019. 4. 30..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tv: UITableView!
    
    var animals = ["cat","dog","pig","bird","whale","cow"]
    var detail = ["고양이","강아지","돼지","새","고래","황소"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tv.dataSource = self
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return animals.count
    }
    
    //cell 만듦
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //cell 재활용
        let cell = tv.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = animals[row]
        cell.detailTextLabel?.text = detail[row]
        
        cell.imageView?.image = UIImage(named: animals[row])
        
        return cell
    }

}

