//
//  PersonsTableViewController.swift
//  tableViewHomeTaskZubair
//
//  Created by Байсаев Зубайр on 19.10.2022.
//

import UIKit

class PersonsTableViewController: UITableViewController {

    private var namesList = Persons.getNames()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let name = namesList[indexPath.row]
        content.text = name.name
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? PersonsDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC?.details = namesList[indexPath.row]
    }
}
