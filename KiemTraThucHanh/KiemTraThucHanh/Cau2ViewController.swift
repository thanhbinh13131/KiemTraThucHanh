//
//  Cau2ViewController.swift
//  KiemTraThucHanh
//
//  Created by admin25 on 7/5/17.
//  Copyright © 2017 admin25. All rights reserved.
//

import UIKit

class Cau2ViewController: UIViewController {
    @IBOutlet weak var link1TextView: UITextField!
    @IBOutlet weak var link2TextView: UITextField!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadButtonAction(_ sender: Any) {
        if (link1TextView.text == "" || link2TextView.text == "") {
            let alert = UIAlertController(title: "Error", message: "You must input url", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        else {
            let url1 = link1TextView.text
            loadImage1(url1!)
            let url2 = link2TextView.text
            loadImage2(url2!)
        }

    }
    
    func loadImage1(_ url: String) {
        let imgUrl = URL(string: url)
        (URLSession(configuration: .default)).dataTask(with: imgUrl!, completionHandler: {(dataImage, response, error) in
            if let data = dataImage {
                DispatchQueue.main.async() { () -> Void in
                    self.imageView1.image = UIImage(data: data)
                }
                
            }
        }).resume()
    }
    
    func loadImage2(_ url: String) {
        let imgUrl = URL(string: url)
        (URLSession(configuration: .default)).dataTask(with: imgUrl!, completionHandler: {(dataImage, response, error) in
            if let data = dataImage {
                DispatchQueue.main.async() { () -> Void in
                    self.imageView2.image = UIImage(data: data)
                }
                
            }
        }).resume()
    }

}
