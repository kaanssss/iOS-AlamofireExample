//
//  ViewController.swift
//  AlomoFireExample
//
//  Created by Kaan Yalçınkaya on 28.11.2021.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AF.request("https://www.mockachino.com/1ddd03de-b604-4c/users").responseDecodable {
            (response:AFDataResponse<UserResponse>) in
            
            switch response.result{
                case .success(let userResponse):
                self.label.text = userResponse.users?[0].firstName
                case .failure(_):
                break
            
            }
            
        }
        
        label.text = "Selam"
        label.text = "Selam"
    }


}

