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
    var filtredCoins:[Tokens] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        ApiCaller.shared.getCryptoData {[weak self] result in
            switch result{
            case .success(let models):
                self?.coinsData = models.compactMap({ model in
                    let price = model.price_usd ?? 0
                    let formatter = PortfolioViewController.numberFormatter
                    let priceString = formatter.string(from: NSNumber(value: price))
                    let iconURL = URL(string: ApiCaller.shared.icons.filter({ icon in
                        icon.asset_id == model.asset_id
                    }).first?.url ?? "")
                    return Tokens(name: model.asset_id,
                           image: nil,
                           price: priceString ?? "N/A",
                           percent: nil,
                           chart: nil,
                           isCryprto: model.type_is_crypto,
                           iconURL: iconURL)
                })
                DispatchQueue.main.async {
                    self?.portfolioVIew.tokensTableView.reloadData()
                }
            case .failure(let erorr):
                print("Error \(erorr)")
            }
        }
    }
    
    func setUpView() {
        let mainView = PortfolioView(frame: self.view.frame)
        portfolioVIew = mainView
        view.addSubview(portfolioVIew)
//        coinsData = fetchData()
        portfolioVIew.setPortfolipView()
        portfolioVIew.addBtnAction = addBtnAction
        portfolioVIew.copyAction = copyBtnAction
        portfolioVIew.sendBtnAction = sendBtnAction
        portfolioVIew.receiveBtnAction = receiveBtnAction
        portfolioVIew.tokensBtnAction = tokensBtnAction
        portfolioVIew.nftBtnAction = nftButtonAction
        portfolioVIew.tokensTableView.delegate = self
        portfolioVIew.tokensTableView.dataSource = self
        portfolioVIew.searchController.delegate = self
        portfolioVIew.searchController.searchResultsUpdater = self
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
        if coinsData[indexPath.row].isCryprto != 0 {
            cell.coinNameLabel.text = coinsData[indexPath.row].name
            cell.coinPrice.text = coinsData[indexPath.row].price
            if let url = coinsData[indexPath.row].iconURL {
                let task = URLSession.shared.dataTask(with: url) { data, _, _ in
                    if let data = data {
                        DispatchQueue.main.async {
                            cell.coinImage.image = UIImage(data: data)
                        }
                    }
                }
                task.resume()
            }
        }
        return cell
    }
    
    
    static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.locale = .current
        formatter.allowsFloats = true
        formatter.numberStyle = .currency
        formatter.formatterBehavior = .default
        return formatter
    }()
}

extension PortfolioViewController: UISearchResultsUpdating, UISearchControllerDelegate{
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = searchController.searchBar.text {
            filtredCoins = coinsData.filter({(coinsData: Tokens) -> Bool in
                return coinsData.name.lowercased().contains(searchText.lowercased())
            })
            portfolioVIew.tokensTableView.reloadData()
        }
    }
}
