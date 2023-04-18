//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Pavel Karunnyj on 18.04.2023.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private let contactList = Person.getPerson()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let contact = contactList[indexPath.row]
        let contactInfoVC = segue.destination as? ContactInfoViewController
        contactInfoVC?.contact = contact
    }
}
// MARK: - UITableViewDataSource

extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.row]
        
        content.text = "\(contact.name) \(contact.surname)"
        cell.contentConfiguration = content
        return cell
    }
}
