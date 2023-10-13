//
//  ResultVC.swift
//  sopt_first_seminar
//
//  Created by Woo Jye Lee on 10/7/23.
//

import UIKit

class ResultVC: UIViewController {

    @IBAction func backButtonTap(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
        self.dismiss(animated: true)
    }
    
    var email: String = ""
    var password: String = ""
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    private func bindText() {
            self.emailLabel.text = "email : \(email)"
        self.passwordLabel.text = "password : \(password)"
    }
    
    
    
    // lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
