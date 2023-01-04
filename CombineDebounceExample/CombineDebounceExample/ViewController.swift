//
//  ViewController.swift
//  CombineDebounceExample
//
//  Created by USER on 2023/01/04.
//

import UIKit
import Combine

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    private lazy var searchController: UISearchController = {
        let searchController = UISearchController()
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.tintColor = .black
        searchController.searchBar.searchTextField.accessibilityIdentifier = "mySearchBarTextField"
        return searchController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

