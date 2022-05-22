//
//  TokensTableViewCell.swift
//  Cryppy
//
//  Created by Демьян on 21.05.2022.
//

import UIKit

class TokensTableViewCell: UITableViewCell {
    
    let tokensCellID = "TokensTableViewCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setView()
        setCoinImage()
        setCoinNameLabel()
        setCoinPrice()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let cellView: UIView = {
        let view = UIView()
        return view
    }()
    
    func setView(){
        addSubview(cellView)
        cellView.translatesAutoresizingMaskIntoConstraints = false
        cellView.widthAnchor.constraint(equalToConstant: 342).isActive = true
        cellView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        cellView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        cellView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    }
    
    
    let coinImage: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    func setCoinImage() {
        cellView.addSubview(coinImage)
        coinImage.translatesAutoresizingMaskIntoConstraints = false
        coinImage.widthAnchor.constraint(equalToConstant: 24).isActive = true
        coinImage.heightAnchor.constraint(equalToConstant: 24).isActive = true
        coinImage.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 4).isActive = true
//        coinImage.centerXAnchor.constraint(equalTo: cellView.centerXAnchor).isActive = true
        coinImage.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 5).isActive = true
    }
    
    let coinNameLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 35, height: 21)
        label.backgroundColor = .clear
        label.textColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1)
        label.font = UIFont(name: "Poppins-SemiBold", size: 14)
        return label
    }()
    
    func setCoinNameLabel() {
        cellView.addSubview(coinNameLabel)
        coinNameLabel.translatesAutoresizingMaskIntoConstraints = false
        coinNameLabel.widthAnchor.constraint(equalToConstant: 38).isActive = true
        coinNameLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        coinNameLabel.leadingAnchor.constraint(equalTo: coinImage.leadingAnchor, constant: 40).isActive = true
        coinNameLabel.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 5).isActive = true
    }
    
    let coinPrice: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 89, height: 18)
        label.backgroundColor = .clear
        label.textColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1)
        label.font = UIFont(name: "Poppins-Regular", size: 12)
        return label
    }()
    
    func setCoinPrice() {
        cellView.addSubview(coinPrice)
        coinPrice.translatesAutoresizingMaskIntoConstraints = false
        coinPrice.widthAnchor.constraint(equalToConstant: 91).isActive = true
        coinPrice.heightAnchor.constraint(equalToConstant: 18).isActive = true
        coinPrice.leadingAnchor.constraint(equalTo: coinNameLabel.leadingAnchor, constant: 45).isActive = true
        coinPrice.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 7.5).isActive = true
    }

}
