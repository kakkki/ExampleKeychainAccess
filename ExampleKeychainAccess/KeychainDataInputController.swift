//
//  KeychainDataInputController.swift
//  ExampleKeychainAccess
//
//  Created by Atsuki Kakehi on 2020/01/26.
//  Copyright © 2020 Atsuki Kakehi. All rights reserved.
//

import Foundation
import UIKit

class KeychainDataInputController: UITableViewController {
    
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
        print("debug0000 : cancel")
    }
    
}
