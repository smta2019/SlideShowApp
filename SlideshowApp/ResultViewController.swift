//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by stma2019 on 2021/05/30.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var expandImage: UIImageView!
    
    var displayImage:UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        expandImage.image = displayImage

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
