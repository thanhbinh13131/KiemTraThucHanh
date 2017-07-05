//
//  ViewController.swift
//  KiemTraThucHanh
//
//  Created by admin25 on 7/5/17.
//  Copyright © 2017 admin25. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Câu 1 b, phương án 1 sử dụng DispatchQueue
        
        let queue = DispatchQueue(label:"Queue",qos:.utility, attributes: .concurrent)
        queue.async {
            for i in 0..<10{
                print("🔴",i)
            }
        }
        queue.async {
            for i in 100..<110{
                print("🔵",i)
            }
        }
        queue.async {
            for i in 1000..<1010{
                print("⚫️",i)
            }
        }
        
        //Câu 1 b, phương án 2 sử dụng QoS
        
        let thread1 = DispatchQueue(label:"thread1", qos: .userInitiated)
        
        let thread2 = DispatchQueue(label:"thread2", qos: .userInitiated)
        
        let thread3 = DispatchQueue(label:"thread3", qos: .userInitiated)
        
        thread1.async {
            for i in 0..<10{
                print("🔴",i)
            }
        }
        thread2.async {
            for i in 100..<110{
                print("🔵",i)
            }
        }
        thread3.async {
            for i in 1000..<1010{
                print("⚫️",i)
            }
        }

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

