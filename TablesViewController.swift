//
//  TablesViewController.swift
//  NDSCalculator
//
//  Created by Daleske,Jacob S on 11/17/22.
//

import UIKit

class TablesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return table.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tablesTableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        
        cell.textLabel?.text = table[indexPath.row].name
        
        return cell
    }
    
    
    @IBOutlet weak var tablesTableView: UITableView!
    
    var Table_Images = TableImages()
    
    var table = table_images

    override func viewDidLoad() {
        super.viewDidLoad()

        tablesTableView.delegate = self
        tablesTableView.dataSource = self
        self.title = "Tables"
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "tableImageSegue"{
            let destination = segue.destination as! TableImageViewController
            destination.imageName = table[(tablesTableView.indexPathForSelectedRow?.row)!]
            
        }
    }

}
