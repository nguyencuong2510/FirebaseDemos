//
//  ViewController.swift
//  FirebaseDemos
//
//  Created by NguyenCuong on 1/21/18.
//  Copyright © 2018 NguyenCuong. All rights reserved.
//

import UIKit
import FirebaseDatabase


class ViewController: UIViewController {

    var dbReferent: DatabaseReference?
    var dbHanldle: DatabaseHandle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        dbReferent = Database.database().reference()
        dbReferent?.child("name").childByAutoId().setValue("BBBB")
        dbReferent?.child("name").childByAutoId().setValue("AAAA")
        
        //retrieve data
//        dbHanldle = dbReferent?.child("name").observe(.childAdded, with: { (snapshot) in
//            let  name:String?  = snapshot.value as? String
//            print(name)
//        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

