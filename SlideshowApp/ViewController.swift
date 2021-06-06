//
//  ViewController.swift
//  SlideshowApp
//
//  Created by stma2019 on 2021/05/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
        
    let imageArr = [UIImage(named: "image1"),UIImage(named: "image2"),UIImage(named: "image3")]

    var indexNum:Int = 0
    
    var timer: Timer!
    var timer_sec: Int = 2
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayView(indexNum: indexNum)
    }
    
    func displayView(indexNum x:Int) {
        return imageView.image = imageArr[x]
    }
    
    @IBAction func goSlide(_ sender: Any) {
        if timer == nil {
            goSlideDisplay()
        }
        
    }
    
    @IBAction func backSlide(_ sender: Any) {
        if timer == nil {
            if indexNum != 0 {
                indexNum -= 1
            } else {
                indexNum = 2
            }
            displayView(indexNum: indexNum)
        }
    }
    
    func goSlideDisplay() {
        if indexNum != 2 {
            indexNum += 1
        } else {
            indexNum = 0
        }
        displayView(indexNum: indexNum)
    }
    
    @IBAction func autoSlide(_ sender: Any) {
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: self, repeats: true)
        } else {
            self.timer.invalidate()
            self.timer = nil
        }
    }
    
    @objc func updateTimer(_ timer: Timer) {
        self.timer_sec += 2
        goSlideDisplay()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if self.timer != nil {
            self.timer.invalidate()
            self.timer = nil
        }
        
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.displayImage = imageView.image
    }
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
    }

    

}

