//
//  ViewController.swift
//  WarnerMedia
//
//  Created by Baiaman Gapparov on 10/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableview: UITableView!
    @IBOutlet var textField: UITextField!
    
    let url = "https://www.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=1508443e49213ff84d566777dc211f2a&tags=SEARCH_TEXT&per_page=25&format=json&nojsoncallback=1"
    
    var data = [String]()
    var filteredData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.delegate = self
        self.tableview.dataSource = self
    }
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        
        return cell
    }
}

