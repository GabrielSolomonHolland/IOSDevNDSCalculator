//
//  ViewController.swift
//  NDSCalculator
//
//  Created by Solomon-Holland,Gabriel I on 11/1/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "NDS Calculator"
    }

    @IBAction func calcButtonOnClick(_ sender: Any) {
        
        
    }
    
    
    @IBAction func equationsButtonOnClick(_ sender: Any) {
    }
    
    
    @IBAction func tableButtonOnClick(_ sender: Any) {
    }
    
    
    @IBAction func legalButtonOnClick(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let transition = segue.identifier
        
        if transition == "calcSegue"{
            let destination = segue.destination as! CalculatorViewController
        }
        
        else if transition == "equationsSegue" {
            let destination = segue.destination as! EquationsViewController
        }
        
        else if transition == "tableSegue" {
            let destination = segue.destination as! TablesViewController
        }
        else if transition == "legalSegue"{
            let destination = segue.destination as! LegalViewController
        }
    }
    
}

