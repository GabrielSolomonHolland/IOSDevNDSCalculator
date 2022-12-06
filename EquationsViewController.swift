//
//  EquationsViewController.swift
//  NDSCalculator
//
//  Created by Daleske,Jacob S on 11/17/22.
//

import UIKit

class EquationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = EquationsTableView.dequeueReusableCell(withIdentifier: "equationsCell", for: indexPath)
        
        cell.textLabel?.text = cases_array[indexPath.row].name
        
        return cell
    }
    

    var Equations = EquationsImages()
    var cases_array = cases
    
    @IBOutlet weak var EquationsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        EquationsTableView.delegate = self
        EquationsTableView.dataSource = self
        self.title = "Equations"
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "equationsSegue"{
            let destination = segue.destination as! EquationsImageViewController
            destination.imageName = cases_array[(EquationsTableView.indexPathForSelectedRow?.row)!]
        }
    }
}
