//
//  ProfileViewController.swift
//  Cryppy
//
//  Created by Демьян on 21.05.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profileView = ProfileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    func setUpView() {
        let mainView = ProfileView(frame: self.view.frame)
        self.profileView = mainView
        view.addSubview(profileView)
        profileView.setProfileView()
    }
    



}
