//
//  ViewController.swift
//  UncommonElements
//
//  Created by Sohini Acharya on 01/06/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let array1 = [8, 8, 7, 2, 1, 7, 9]
        let array2 = [14, 8, 2, 7, 7]
        //let array1 = ["goat", "fish", "deer", "goat", "bear"]
        //let array2 = ["ant", "bear", "goat"]
        //let array1 = [9, 4, 7, 9, 3]
        //let array2 = [9, 11, 9, 13, 9]
        print(solve(array1: array1,array2:  array2))

    }

    private func frequency<T: Hashable & Comparable>(array: [T]) -> [T: Int]
    {
       let array = array
        var dict = [T:Int]()
        
        for i in 0..<array.count
        {
            let value = array[i]
            dict[value] = (dict[value] ?? 0) + 1
        }
        
        return dict
    }

    private func solve<T: Hashable & Comparable> (array1: [T],array2: [T]) -> [T]
    {
        let dict1 = frequency(array: array1)
        let dict2 = frequency(array: array2)
        var result = [T]()
        
        for i in 0..<array2.count {
            if dict1[array2[i]] != dict2[array2[i]] {
                result.append(array2[i])
            }
        }
       let set1 = Set(result)
        var finalResult = Array(set1)
        finalResult.sort()
        return finalResult
    }

}

