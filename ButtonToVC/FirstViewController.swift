//
//  FirstViewController.swift
//  ButtonToVC
//
//  Created by 辛忠翰 on 2018/8/21.
//  Copyright © 2018 辛忠翰. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let testView: UIView = {
       let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    lazy var generateViewButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Generate View!", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action: #selector(generateView), for: .touchUpInside)
        return btn
    }()
    
    @objc func generateView(){
        view.addSubview(testView)
        testView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        testView.center = view.center
        testView.addSubview(goToSecondPageButton)
        goToSecondPageButton.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
    }
    
    lazy var goToSecondPageButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Click me!", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action: #selector(goToSecondPage), for: .touchUpInside)
        return btn
    }()
    
    @objc func goToSecondPage(){
        let secondVC = SecondViewController()
        present(secondVC, animated: true, completion: nil)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        view.addSubview(generateViewButton)
        generateViewButton.frame = CGRect(x: 100, y: 100, width: 100, height: 30)
    }
}

