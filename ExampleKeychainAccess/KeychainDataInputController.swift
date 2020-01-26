//
//  KeychainDataInputController.swift
//  ExampleKeychainAccess
//
//  Created by Atsuki Kakehi on 2020/01/26.
//  Copyright © 2020 Atsuki Kakehi. All rights reserved.
//

import Foundation
import UIKit
import KeychainAccess

class KeychainDataInputController: UITableViewController {
    
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var serviceField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
        print("debug0000 : cancel")
    }
    
    
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
        let keychain: Keychain
        if let service = serviceField.text, !service.isEmpty {
            keychain = Keychain(service: service)
        } else {
            keychain = Keychain()
        }
        keychain[usernameField.text!] = passwordField.text

        dismiss(animated: true, completion: nil)

    }
    
    
    @IBAction func editingChanged(_ sender: UITextField) {
        switch (usernameField.text, passwordField.text) {
        case let (username?, password?):
            saveButton.isEnabled = !username.isEmpty && !password.isEmpty
            print("debug0000 : case1")
        case (_?, nil):
            saveButton.isEnabled = false
            print("debug0000 : case2")
        case (nil, _?):
            saveButton.isEnabled = false
            print("debug0000 : case3")
        case (nil, nil):
            saveButton.isEnabled = false
            print("debug0000 : case4")
        }

    }
}
