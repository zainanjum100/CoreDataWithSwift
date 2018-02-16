//
//  ViewController.swift
//  CoreDataWithSwift
//
//  Created by ZainAnjum on 16/02/2018.
//  Copyright © 2018 ZainAnjum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        insertData()
        fetchData()
    }
    func insertData() {
        let user = Users(context: context)
        
        user.name = "Zain"
        user.age = 20
        
        appDelegate.saveContext()
    }
    func fetchData() {
        do {
            let data = try context.fetch(Users.fetchRequest())
            
            for each in data {
                print("Name: \((each as AnyObject).name! ?? "no Value")")
                print("Age: \((each as AnyObject).age!)")
            }
            
        }
        catch  {
            
        }
    }


}

