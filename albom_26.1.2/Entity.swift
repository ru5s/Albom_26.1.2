//
//  Entity.swift
//  albom_26.1.2
//
//  Created by Ruslan Ismailov on 22/08/22.
//

import Foundation

import UIKit

protocol Pictures {
    var arrayPictures: [UIImage] {get}
}

class AllPictures: Pictures {
    
    var arrayPictures: [UIImage] = [
        UIImage(named: "pic 1")!,
        UIImage(named: "pic 2")!,
        UIImage(named: "pic 3")!,
        UIImage(named: "pic 4")!,
        UIImage(named: "pic 5")!,
        UIImage(named: "pic 6")!,
        UIImage(named: "pic 7")!,
        UIImage(named: "pic 8")!,
        UIImage(named: "pic 9")!,
        UIImage(named: "pic 10")!,
        UIImage(named: "pic 11")!,
        UIImage(named: "pic 12")!,
        UIImage(named: "pic 13")!,
        UIImage(named: "pic 14")!,
        UIImage(named: "pic 15")!,
    ]
    
    
}
