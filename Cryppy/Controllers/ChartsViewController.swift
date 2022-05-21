//
//  ChartsViewController.swift
//  Cryppy
//
//  Created by Демьян on 21.05.2022.
//

import UIKit

class ChartsViewController: UIViewController {

    var chartsView = ChartsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    func setUpView() {
        let mainView = ChartsView(frame: view.self.frame)
        self.chartsView = mainView
        view.addSubview(chartsView)
        chartsView.setChartsView()
    }
    

 

}
