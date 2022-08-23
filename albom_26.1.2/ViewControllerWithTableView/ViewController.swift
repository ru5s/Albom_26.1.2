//
//  ViewController.swift
//  albom_26.1.2
//
//  Created by Ruslan Ismailov on 21/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    var table = UITableView()
    var pictures: Pictures = AllPictures()
    
    let bar = MyToolbar()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        table = UITableView(frame: CGRect(x: 0, y: 45, width: view.frame.width, height: view.frame.height - 125))
        
        table.delegate = self
        table.dataSource = self
        table.backgroundColor = .black
        view.addSubview(table)
        
//        table.addSubview(bar)
        
        table.reloadData()
        
    }
    
   
    


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.arrayPictures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        table.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTVC")
        
        let cell = table.dequeueReusableCell(withIdentifier: "CustomTVC", for: indexPath) as! CustomTableViewCell
        
        cell.imageInTableViewCell.image = pictures.arrayPictures[indexPath.item]
        cell.backgroundColor = .black
                
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 290
    }
    
}

