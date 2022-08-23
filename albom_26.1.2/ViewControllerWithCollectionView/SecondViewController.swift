//
//  SecondViewController.swift
//  albom_26.1.2
//
//  Created by Ruslan Ismailov on 22/08/22.
//

import UIKit

//Не получилось сделать размер ячейки нормальным, либо маленький, либо если увеличиваю то они идут нахлестом, если сможете дайте фитбек по этому моменту, где я упустил момент присваивания размеров

class SecondViewController: UIViewController {
    
    var collection: UICollectionView?
    var pictures: Pictures = AllPictures()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection = UICollectionView(frame: CGRect(x: 0, y: 35, width: view.bounds.width, height: view.bounds.height), collectionViewLayout: UICollectionViewFlowLayout.init())
        
//        let cellSize = CGSize(width:300 , height:300)
        
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
//        layout.scrollDirection = .horizontal
//        layout.itemSize = cellSize
//        layout.accessibilityFrame.size = CGSize(width: 300, height: 300)
        
        
        
        collection?.delegate = self
        collection?.dataSource = self
        
        collection?.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CustomCollectionCell")
        
        
        view.addSubview(collection!)
        
        collection?.reloadData()
    }

}

extension SecondViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pictures.arrayPictures.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        let cell = collection?.dequeueReusableCell(withReuseIdentifier: "CustomCollectionCell", for: indexPath) as! CustomCollectionViewCell
        
//        cell.awakeFromNib()
        
        cell.backgroundColor = .black
        cell.imageInCell.image = pictures.arrayPictures[indexPath.row]
        
        return cell
    }
    
    
    
    
}
