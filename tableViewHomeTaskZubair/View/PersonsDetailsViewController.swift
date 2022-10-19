//
//  PersonsDetailsViewController.swift
//  tableViewHomeTaskZubair
//
//  Created by Байсаев Зубайр on 19.10.2022.
//

import UIKit

class PersonsDetailsViewController: UIViewController {

    var details: Persons!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = details.name
        numberLabel.text = String(details.number)
        mailLabel.text = details.email
    }
    

}
