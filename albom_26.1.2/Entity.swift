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
    var arrayWidePictures: [UIImage] {get}
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
    
    var arrayWidePictures: [UIImage] = [
        UIImage(named: "wide pic 1")!,
        UIImage(named: "wide pic 2")!,
        UIImage(named: "wide pic 3")!,
        UIImage(named: "wide pic 4")!,
        UIImage(named: "wide pic 5")!,
        UIImage(named: "wide pic 6")!,
        UIImage(named: "wide pic 7")!,
        UIImage(named: "wide pic 8")!,
        UIImage(named: "wide pic 9")!,
        UIImage(named: "wide pic 10")!,
        UIImage(named: "wide pic 11")!,
    ]
    
}
