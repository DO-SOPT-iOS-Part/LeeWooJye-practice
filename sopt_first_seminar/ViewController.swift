//
//  ViewController.swift
//  sopt_first_seminar
//
//  Created by Woo Jye Lee on 10/7/23.
//

import UIKit

class ViewController: UIViewController {
    
    private var idText: String = ""
    private var passwordText: String = ""
    
    // 로그인 버튼을 눌렀을 때 이벤트를 설정하기 위해
    @IBAction func loginButtonTap(_ sender: Any) {
        //print("\(idText)\n\(passwordText)")
        pushToResultVC()
    }
    
    // 로그인 버튼의 속성을 변경하고 싶을 때
    @IBOutlet weak var loginButtonAttribute: UIButton!
    
    // 'editing changed' 옵션 -> 이메일/비번 값이 바뀔 때마다 이벤트를 취하게 함.
    @IBAction func emailTextField(_ sender: Any) {
        guard let textField = sender as? UITextField else {return}
                if let idText = textField.text {
                    self.idText = idText
                }
    }
    @IBAction func passwordTextField(_ sender: Any) {
        guard let textField = sender as? UITextField else {return}
                if let passwordText = textField.text {
                    self.passwordText = passwordText
                }
    }
    
    func pushToResultVC() {
        guard let resultVC = self.storyboard?.instantiateViewController(identifier: "ResultVC") as? ResultVC else {return}
        resultVC.email = idText
        resultVC.password = passwordText
        self.navigationController?.pushViewController(resultVC, animated: true)
    }
        
    func presentToResultVC() {
        guard let resultVC = self.storyboard?.instantiateViewController(withIdentifier: "ResultVC") as? ResultVC else {return}
        resultVC.email = idText
        resultVC.password = passwordText
        self.present(resultVC, animated: true)
    }
    
    // lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

