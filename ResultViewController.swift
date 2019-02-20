//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by NAKAGAWA KEITA on 2019/02/17.
//  Copyright © 2019 keita.nakagawa. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
  
  @IBOutlet weak var imageView: UIImageView!
 
  
  
  
  var image = UIImage()
  
    override func viewDidLoad() {
        super.viewDidLoad()

      imageView.image = image
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
