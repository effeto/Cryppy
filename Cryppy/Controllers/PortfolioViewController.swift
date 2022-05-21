//
//  PortfolioViewController.swift
//  Cryppy
//
//  Created by Демьян on 21.05.2022.
//

import UIKit

class PortfolioViewController: UIViewController {
    
    var portfolioVIew = PortfolioView()
    
    var coinsData:[Tokens] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        
    }
    
    func setUpView() {
        let mainView = PortfolioView(frame: self.view.frame)
        portfolioVIew = mainView
        view.addSubview(portfolioVIew)
        coinsData = fetchData()
        portfolioVIew.setPortfolipView()
        portfolioVIew.addBtnAction = addBtnAction
        portfolioVIew.copyAction = copyBtnAction
        portfolioVIew.sendBtnAction = sendBtnAction
        portfolioVIew.receiveBtnAction = receiveBtnAction
        portfolioVIew.tokensBtnAction = tokensBtnAction
        portfolioVIew.nftBtnAction = nftButtonAction
        portfolioVIew.tokensTableView.delegate = self
        portfolioVIew.tokensTableView.dataSource = self
    }
    
    func addBtnAction(){
        print("Working")
    }
    
    
    // make it copy card number
    func copyBtnAction(){
        print("Working")
    }
    
    func sendBtnAction() {
        print("Working")
    }
    
    func receiveBtnAction() {
        print("Working")
    }
    
    func tokensBtnAction() {
        print("working")
        tokensOrNFT()
    }
    
    func nftButtonAction() {
        print("workinf")
        tokensOrNFT()
    }
    
    
    func tokensOrNFT() {
        if portfolioVIew.nftBtn.isTouchInside{
            portfolioVIew.nftBtn.layer.backgroundColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1).cgColor
            portfolioVIew.nftBtn.setTitleColor(UIColor.white, for: .normal)
            portfolioVIew.nftImageView.isHidden = false
            portfolioVIew.tokensTableView.isHidden = true
            portfolioVIew.tokensBtn.layer.backgroundColor = UIColor(red: 0.996, green: 0.996, blue: 0.996, alpha: 1).cgColor
            portfolioVIew.tokensBtn.setTitleColor(UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1), for: .normal)
            
        }else {
            portfolioVIew.tokensBtn.layer.backgroundColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1).cgColor
            portfolioVIew.tokensBtn.setTitleColor(UIColor.white, for: .normal)
            portfolioVIew.nftBtn.layer.backgroundColor = UIColor(red: 0.996, green: 0.996, blue: 0.996, alpha: 1).cgColor
            portfolioVIew.nftBtn.setTitleColor(UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1), for: .normal)
            portfolioVIew.nftImageView.isHidden = true
            portfolioVIew.tokensTableView.isHidden = false
            portfolioVIew.tokensTableView.reloadData()
        }
    }
}

extension PortfolioViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coinsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = portfolioVIew.tokensTableView.dequeueReusableCell(withIdentifier: TokensTableViewCell().tokensCellID, for: indexPath) as! TokensTableViewCell
        cell.coinNameLabel.text = coinsData[indexPath.row].name
        cell.coinImage.image = coinsData[indexPath.row].image
        cell.coinPrice.text = coinsData[indexPath.row].price
        return cell
    }
    
    func fetchData() -> [Tokens] {
        let coin1 = Tokens(name: "ETH", image: UIImage(named: "eth.png"), price: "1.01 (~$2,176.91)", percent: nil, chart: nil)
        let coin2 = Tokens(name: "SOL", image: UIImage(named: "sol.png"), price: "14.8 (~$891.11)", percent: nil, chart: nil)
        let coin3 = Tokens(name: "DOT", image: UIImage(named: "dot.png"), price: "37.7 (~$376.58)", percent: nil, chart: nil)
        let coin4 = Tokens(name: "APE", image: UIImage(named: "ape.png"), price: "8.4 (~$48.1)", percent: nil, chart: nil)
        let coin5 = Tokens(name: "ADA", image: UIImage(named: "ada.png"), price: "10.2 (~$5.7)", percent: nil, chart: nil)
        
        return [coin1, coin2, coin3, coin4, coin5]
    }
    
    
}
