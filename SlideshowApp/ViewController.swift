//
//  ViewController.swift
//  SlideshowApp
//
//  Created by NAKAGAWA KEITA on 2019/02/16.
//  Copyright © 2019 keita.nakagawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBAction func onTapImage(_ sender: Any) {
   performSegue(withIdentifier: "result", sender:nil )
    
  }
  
  @IBOutlet weak var imageView: UIImageView!
  
  @IBAction func pauseButton(_ sender: Any) {
     if self.timer == nil {
      self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer( _:)), userInfo: nil, repeats: true)
     } else if self.timer != nil {
      self.timer.invalidate()
      self.timer = nil
    }
    
    if self.timer != nil {
      startTimer.isEnabled = false
    }else if self.timer == nil{
      startTimer.isEnabled = true
    }
    
    if self.timer != nil {
      badkButton.isEnabled = false
    }else if self.timer == nil{
       badkButton.isEnabled = true
    }
    
  }
  
  @IBOutlet weak var startTimer: UIButton!
  
  @IBOutlet weak var badkButton: UIButton!
  
  @IBAction func backButton(_ sender: Any) {
    dispImageNo -= 1
    displayImage()
  }
  
  @IBAction func startTimer(_ sender: Any) {
    dispImageNo += 1
    displayImage()
  }
  
  
  var timer: Timer!
  
  var timer_sec: Int = 0
  
  var dispImageNo = 0
  
  func displayImage() {
    
    let imageNameArray = [
    "犬１.jpeg",
    "犬２.jpeg",
    "犬３.jpg",
    ]
    
    if dispImageNo < 0 {
      dispImageNo = 2
      }
    
    if dispImageNo > 2 {
      dispImageNo = 0
    }
    
    let name = imageNameArray[dispImageNo]
    
    let image = UIImage(named: name)
    
    imageView.image = image
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
  
    let image =  UIImage(named:"犬１.jpeg")
    imageView.image = image
    
    
  }

  @objc func updateTimer(_ timer: Timer) {
    timer_sec += 2
    dispImageNo += 1
    displayImage()
    
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.image = imageView.image!
  }

  @IBAction func unwind(_ segue: UIStoryboardSegue) {
  }
  
}

//segueで戻るができない
//再生時タップ無効できない
//再生を押すと加速する
//resultViewでの拡大写真


