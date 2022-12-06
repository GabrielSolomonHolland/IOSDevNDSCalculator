//
//  EquationsImageViewController.swift
//  NDSCalculator
//
//  Created by Daleske,Jacob S on 12/5/22.
//

import UIKit

class EquationsImageViewController: UIViewController {

    var imageName: EquationsImages?
    
    @IBOutlet weak var EquationsImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = imageName?.name
        EquationsImage.image = UIImage(named: imageName?.imageName ?? "")
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
