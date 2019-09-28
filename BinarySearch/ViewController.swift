//
//  ViewController.swift
//  BinarySearch
//
//  Created by Mohamed Marbouh on 2019-09-27.
//  Copyright © 2019 Mohamed Marbouh. All rights reserved.
//

import UIKit

func search(list: [Int], for value: Int) -> Int? {
    var lowerIndex = 0
    var upperIndex = list.count - 1
    
    while true {
        let index = (lowerIndex + upperIndex)/2
        
        if list[index] == value {
            return index
        } else if lowerIndex > upperIndex {
            return nil
        } else {
            if list[index] > value {
                upperIndex = index - 1
            } else {
                lowerIndex = index + 1
            }
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let resultsLabel = UILabel()
        resultsLabel.center = CGPoint(x: 20, y: 200)
        view.addSubview(resultsLabel)
        
        let numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        let challenge = Int.random(in: 0..<10)
        
        if let result = search(list: numbers, for: challenge) {
            resultsLabel.text = "Found \(challenge) at index \(result) in \(numbers)"
            resultsLabel.sizeToFit()
        }
    }

}

