//
//  ViewController.swift
//  Cryppy
//
//  Created by Демьян on 21.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var mainView = View()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    func setUpView() {
        let addView = View(frame: self.view.frame)
        self.mainView = addView
        self.view.addSubview(mainView)
        mainView.setView()
        mainView.overviewBtnAction = overviewBtnAction
    }
    
    func overviewBtnAction(){
        let overviewVC = OverviewViewController()
        overviewVC.modalPresentationStyle = .fullScreen
        overviewVC.createTabBar()
        show(overviewVC, sender: self)
        print("Working")
    }


}

