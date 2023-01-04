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

extension UISearchTextField {
    var myDebounceSearchPublisher: AnyPublisher<String, Never>{
        NotificationCenter.default.publisher(for: UISearchTextField.textDidChangeNotification, object: self)
            // NotificationCenter에서 UISearchTextField 가져옴
            .compactMap { $0.object as? UISearchTextField }
            // UISearchTextField에서 String 가져오기
            .map { $0.text ?? "" }
            // Debounce : 1초 대기
            .debounce(for: .milliseconds(1000), scheduler: RunLoop.main)
            // 글자가 있을 때만 이벤트 전달
            .filter { $0.count > 0 }
            .print()
            // 앞서 Publishers.Print<Publishers.CompactMap<NotificationCenter.Publisher, String>>을 AnyPublisher로 퉁침
            .eraseToAnyPublisher()
    }
}
