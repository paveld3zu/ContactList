//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by Pavel Karunnyj on 18.04.2023.
//

import UIKit

final class ContactInfoViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = "Phone: \(contact.phoneNumber)"
        emailLabel.text = "Email: \(contact.email)"
    }
}
