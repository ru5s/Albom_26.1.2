//
//  ThirdViewController.swift
//  albom_26.1.2
//
//  Created by Ruslan Ismailov on 22/08/22.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    
    var pictures: Pictures = AllPictures()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        myCollectionView.reloadData()
    }
    

}

extension ThirdViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pictures.arrayWidePictures.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "myThirdCell", for: indexPath) as! MyCollectionViewCell
//        cell.frame.size.height = CGFloat(Int(pictures.arrayWidePictures[indexPath.item].size.height))
        cell.imageViewCell.image = pictures.arrayWidePictures[indexPath.item]
        return cell
        
    }
    
    
}
