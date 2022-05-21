//
//  PortfolioView.swift
//  Cryppy
//
//  Created by Демьян on 21.05.2022.
//

import UIKit

class PortfolioView: UIView {
    
    var addBtnAction:(()->Void)?
    var copyAction:(()->Void)?
    var sendBtnAction:(()->Void)?
    var receiveBtnAction:(()->Void)?
    var tokensBtnAction:(()->Void)?
    var nftBtnAction:(()->Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setPortfolipView(){
        self.backgroundColor = .white
        setTitle()
        setAddBtn()
        setCardView()
        setCardNumLabel()
        setCopyBtn()
        setCardMoney()
        setTokenLabel()
        setDollLabel()
        setPercentLabel()
        setLine()
        setSendBtn()
        setReceiveBtn()
        setLineLabel()
        setAssetsLabel()
        setTokenBtn()
        setNFTBtn()
        setTokenTableView()
        setNFTImage()
    }
    
    let title: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 93, height: 22)
        label.backgroundColor = .white
        label.textColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1)
        label.font = UIFont(name: "Poppins-Medium", size: 20)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73
        label.attributedText = NSMutableAttributedString(string: "Portfolio", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setTitle() {
        self.addSubview(title)
        title.widthAnchor.constraint(equalToConstant: 93).isActive = true
        title.heightAnchor.constraint(equalToConstant: 22).isActive = true
        title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        title.topAnchor.constraint(equalTo: self.topAnchor, constant: 45).isActive = true
    }
    
    let addBtn: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
        button.backgroundColor = .white
        button.setImage(UIImage(named: "addBtn.png"), for: .normal)
        button.addTarget(self, action: #selector(addBtnTaped), for: .touchUpInside)
        return button
    }()
    
    func setAddBtn() {
        self.addSubview(addBtn)
        addBtn.translatesAutoresizingMaskIntoConstraints = false
        addBtn.widthAnchor.constraint(equalToConstant: 32).isActive = true
        addBtn.heightAnchor.constraint(equalToConstant: 32).isActive = true
        addBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 338).isActive = true
        addBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 44).isActive = true
    }
    
    let cardView: UIView = {
        let card = UIView()
        card.frame = CGRect(x: 0, y: 0, width: 342, height: 200)
        card.backgroundColor = .white
        card.layer.backgroundColor = UIColor(red: 0.835, green: 0.953, blue: 0.69, alpha: 1).cgColor
        card.layer.cornerRadius = 16
        return card
    }()
    
    func setCardView() {
        self.addSubview(cardView)
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.widthAnchor.constraint(equalToConstant: 342).isActive = true
        cardView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        cardView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        cardView.topAnchor.constraint(equalTo: self.topAnchor, constant: 151).isActive = true
    }
    
    let cardNumberLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 81, height: 22)
        label.backgroundColor = .clear
        label.textColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1)
        label.font = UIFont(name: "Poppins-Regular", size: 14)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.05
        label.attributedText = NSMutableAttributedString(string: "12345678", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        return label
    }()
    
    func setCardNumLabel() {
        cardView.addSubview(cardNumberLabel)
        cardNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        cardNumberLabel.widthAnchor.constraint(equalToConstant: 81).isActive = true
        cardNumberLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        cardNumberLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 24).isActive = true
        cardNumberLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 24).isActive = true
    }
    
    let copyBtn: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 12, height: 12)
        button.backgroundColor = .clear
        button.setImage(UIImage(named: "copy.png"), for: .normal)
        button.addTarget(self, action: #selector(copyBtnTaped), for: .touchUpInside)
        return button
    }()
    
    func setCopyBtn() {
        cardView.addSubview(copyBtn)
        copyBtn.translatesAutoresizingMaskIntoConstraints = false
        copyBtn.widthAnchor.constraint(equalToConstant: 12).isActive = true
        copyBtn.heightAnchor.constraint(equalToConstant: 12).isActive = true
        copyBtn.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 111).isActive = true
        copyBtn.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 29).isActive = true
    }
    
    let cardMoney: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 112, height: 39)
        label.backgroundColor = .clear
        label.textColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1)
        label.font = UIFont(name: "Poppins-SemiBold", size: 26)
        label.text = "59,172.81"
        return label
    }()
    
    func setCardMoney() {
        cardView.addSubview(cardMoney)
        cardMoney.translatesAutoresizingMaskIntoConstraints = false
        cardMoney.widthAnchor.constraint(equalToConstant: 112).isActive = true
        cardMoney.heightAnchor.constraint(equalToConstant: 39).isActive = true
        cardMoney.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 24).isActive = true
        cardMoney.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 62).isActive = true
    }
    
    let tokenLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 66, height: 39)
        label.backgroundColor = .clear
        label.textColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1)
        label.font = UIFont(name: "Poppins-Regular", size: 26)
        label.textAlignment = .right
        label.text = "USDT"
        return label
    }()
    
    func setTokenLabel() {
        cardView.addSubview(tokenLabel)
        tokenLabel.translatesAutoresizingMaskIntoConstraints = false
        tokenLabel.widthAnchor.constraint(equalToConstant: 66).isActive = true
        tokenLabel.heightAnchor.constraint(equalToConstant: 39).isActive = true
        tokenLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 252).isActive = true
        tokenLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 62).isActive = true
    }
    
    let dollLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 86, height: 30)
        label.backgroundColor = .clear
        label.textColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1)
        label.font = UIFont(name: "Poppins-Regular", size: 20)
        label.text = "$1,798.27"
        return label
    }()
    
    func setDollLabel() {
        cardView.addSubview(dollLabel)
        dollLabel.translatesAutoresizingMaskIntoConstraints = false
        dollLabel.widthAnchor.constraint(equalToConstant: 86).isActive = true
        dollLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        dollLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 24).isActive = true
        dollLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 140).isActive = true
    }
    
    let percentLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 41, height: 21)
        label.backgroundColor = .clear
        label.textColor = UIColor(red: 0.359, green: 0.65, blue: 0, alpha: 1)
        label.font = UIFont(name: "Poppins-Medium", size: 14)
        label.text = "+2.2% "
        return label
    }()
    
    func setPercentLabel(){
        cardView.addSubview(percentLabel)
        percentLabel.translatesAutoresizingMaskIntoConstraints = false
        percentLabel.widthAnchor.constraint(equalToConstant: 41).isActive = true
        percentLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        percentLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 118).isActive = true
        percentLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 145).isActive = true
    }
    
    let cardLineLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 294, height: 0)
        label.backgroundColor = .white
        var stroke = UIView()
        stroke.bounds = label.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.center = label.center
        label.addSubview(stroke)
        label.bounds = label.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.layer.borderWidth = 1
        stroke.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        return label
    }()
    
    func setLine() {
        cardView.addSubview(cardLineLabel)
        cardLineLabel.translatesAutoresizingMaskIntoConstraints = false
        cardLineLabel.widthAnchor.constraint(equalToConstant: 294).isActive = true
        cardLineLabel.heightAnchor.constraint(equalToConstant: 0).isActive = true
        cardLineLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 24).isActive = true
        cardLineLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 109).isActive = true
    }
    
    let sentBtn: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 33.43, height: 58.71)
        button.backgroundColor = .clear
        button.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        button.setImage(UIImage(named: "send.png"), for: .normal)
        button.addTarget(self, action: #selector(sendBtnTaped), for: .touchUpInside)
        return button
    }()
    
    func setSendBtn() {
        cardView.addSubview(sentBtn)
        sentBtn.translatesAutoresizingMaskIntoConstraints = false
        sentBtn.widthAnchor.constraint(equalToConstant: 33.43).isActive = true
        sentBtn.heightAnchor.constraint(equalToConstant: 58.71).isActive = true
        sentBtn.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 212).isActive = true
        sentBtn.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 125.29).isActive = true
    }
    
    let receiveBtn: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 47, height: 58.71)
        button.backgroundColor = .clear
        button.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        button.setImage(UIImage(named: "receive.png"), for: .normal)
        button.addTarget(self, action: #selector(receiveBtnTaped), for: .touchUpInside)
        return button
    }()
    
    func setReceiveBtn() {
        cardView.addSubview(receiveBtn)
        receiveBtn.translatesAutoresizingMaskIntoConstraints = false
        receiveBtn.widthAnchor.constraint(equalToConstant: 47).isActive = true
        receiveBtn.heightAnchor.constraint(equalToConstant: 58.71).isActive = true
        receiveBtn.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 270.43).isActive = true
        receiveBtn.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 125).isActive = true
    }
    
    let lineLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 342, height: 0)
        label.backgroundColor = .white
        var stroke = UIView()
        stroke.bounds = label.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.center = label.center
        label.addSubview(stroke)
        label.bounds = label.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.layer.borderWidth = 1
        stroke.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.05).cgColor
        return label
    }()
    
    func setLineLabel() {
        self.addSubview(lineLabel)
        lineLabel.translatesAutoresizingMaskIntoConstraints = false
        lineLabel.widthAnchor.constraint(equalToConstant: 342).isActive = true
        lineLabel.heightAnchor.constraint(equalToConstant: 0).isActive = true
        lineLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        lineLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 383).isActive = true


    }
    
    let assetsTitle: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 117, height: 22)
        label.backgroundColor = .clear
        label.textColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1)
        label.font = UIFont(name: "Poppins-Medium", size: 20)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73
        label.attributedText = NSMutableAttributedString(string: "Your Assets", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        return label
    }()
    
    func setAssetsLabel() {
        self.addSubview(assetsTitle)
        assetsTitle.translatesAutoresizingMaskIntoConstraints = false
        assetsTitle.widthAnchor.constraint(equalToConstant: 117).isActive = true
        assetsTitle.heightAnchor.constraint(equalToConstant: 22).isActive = true
        assetsTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        assetsTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 412).isActive = true
    }
    
    let tokensBtn: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 74, height: 29)
        button.backgroundColor = .white
        button.layer.backgroundColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1).cgColor
        button.layer.cornerRadius = 14
        button.setTitle("Tokens", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 14)
        button.addTarget(self, action: #selector(tokenBtnTaped), for: .touchUpInside)
        return button
    }()
    
    func setTokenBtn() {
        self.addSubview(tokensBtn)
        tokensBtn.translatesAutoresizingMaskIntoConstraints = false
        tokensBtn.widthAnchor.constraint(equalToConstant: 74).isActive = true
        tokensBtn.heightAnchor.constraint(equalToConstant: 29).isActive = true
        tokensBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 36).isActive = true
        tokensBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 462).isActive = true
    }
    
    let nftBtn: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 61, height: 29)
        button.backgroundColor = .white
        button.layer.backgroundColor = UIColor(red: 0.996, green: 0.996, blue: 0.996, alpha: 1).cgColor
        button.layer.cornerRadius = 14
        button.setTitle("NFT", for: .normal)
        button.setTitleColor(UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 14)
        button.addTarget(self, action: #selector(nftBtnTaped), for: .touchUpInside)
        return button
    }()
    
    func setNFTBtn() {
        self.addSubview(nftBtn)
        nftBtn.translatesAutoresizingMaskIntoConstraints = false
        nftBtn.widthAnchor.constraint(equalToConstant: 61).isActive = true
        nftBtn.heightAnchor.constraint(equalToConstant: 29).isActive = true
        nftBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 114).isActive = true
        nftBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 462).isActive = true
    }
    
    let tokensTableView: UITableView = {
        let tableView = UITableView()
        tableView.frame = CGRect(x: 0, y: 0, width: 342, height: 248)
        tableView.backgroundColor = .white
        tableView.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        tableView.register(TokensTableViewCell.self, forCellReuseIdentifier: TokensTableViewCell().tokensCellID)
        return tableView
    }()
    
    func setTokenTableView() {
        self.addSubview(tokensTableView)
        tokensTableView.translatesAutoresizingMaskIntoConstraints = false
        tokensTableView.widthAnchor.constraint(equalToConstant: 342).isActive = true
        tokensTableView.heightAnchor.constraint(equalToConstant: 248).isActive = true
        tokensTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        tokensTableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 519).isActive = true
    }
    
    let nftImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 0, y: 0, width: 342, height: 248)
        imageView.backgroundColor = .white
        imageView.image = UIImage(named: "nftMonkey.jpeg")
        imageView.contentMode = .scaleToFill
        imageView.isHidden = true
        return imageView
    }()
    
    func setNFTImage() {
        self.addSubview(nftImageView)
        nftImageView.translatesAutoresizingMaskIntoConstraints = false
        nftImageView.widthAnchor.constraint(equalToConstant: 342).isActive = true
        nftImageView.heightAnchor.constraint(equalToConstant: 248).isActive = true
        nftImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        nftImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 519).isActive = true
    }
    
    @objc func addBtnTaped() {
        addBtnAction?()
    }
    
    @objc func copyBtnTaped() {
        copyAction?()
    }
    
    @objc func sendBtnTaped() {
        sendBtnAction?()
    }
    
    @objc func receiveBtnTaped() {
        receiveBtnAction?()
    }
    
    @objc func tokenBtnTaped() {
        tokensBtnAction?()
    }
    
    @objc func nftBtnTaped() {
        nftBtnAction?()
    }


}
