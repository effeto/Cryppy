//
//  OverviewViewController.swift
//  Cryppy
//
//  Created by Демьян on 21.05.2022.
//

import UIKit

class OverviewViewController: UIViewController {
    
    var overviewView = OverviewView()
    let tapBarController = UITabBarController()
    let portfolioVC = PortfolioViewController()
    let chartsVc = ChartsViewController()
    let profileVC = ProfileViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem = UITabBarItem.init(title: "", image: UIImage(named: "overview.png"), tag: 0)
        setUpOverviewView()
    }
    
    func setUpOverviewView() {
        let overview = OverviewView(frame: self.view.frame)
        self.overviewView = overview
        self.view.addSubview(overviewView)
        overviewView.setOverviewView()
    }
    
    func createTabBar() {
        portfolioVC.tabBarItem = UITabBarItem.init(title: "", image: UIImage(named: "portfolio.png"), tag: 0)
        chartsVc.tabBarItem = UITabBarItem.init(title: "", image: UIImage(named: "charts.png"), tag: 0)
        profileVC.tabBarItem = UITabBarItem.init(title: "", image: UIImage(named: "profile.png"), tag: 0)
        tapBarController.tabBar.tintColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1)
        let appearance = UITabBarAppearance()
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(red: 0.546, green: 0.546, blue: 0.546, alpha: 1)]
        tapBarController.tabBar.standardAppearance = appearance
        tapBarController.tabBar.backgroundColor = .white
        let viewControllersArr = [OverviewViewController(), portfolioVC, chartsVc, profileVC]
        tapBarController.viewControllers = viewControllersArr.map{ UINavigationController.init(rootViewController: $0)}
        view.addSubview(tapBarController.view)
    }
}







