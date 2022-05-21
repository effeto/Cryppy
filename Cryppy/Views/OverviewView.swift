//
//  OverviewView.swift
//  Cryppy
//
//  Created by Демьян on 21.05.2022.
//

import UIKit

class OverviewView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setOverviewView(){
        self.backgroundColor = .white
        setTitle()
        setBtcLabel()
        
    }
    
    let title: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 93, height: 22)
        label.backgroundColor = .white
        label.textColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1)
        label.font = UIFont(name: "Poppins-Medium", size: 20)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73
        label.attributedText = NSMutableAttributedString(string: "Overview", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
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
    
    
    
    let btcLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 201, height: 48)
        label.backgroundColor = .white
        label.textColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1)
        label.font = UIFont(name: "Poppins-SemiBold", size: 32)
        label.text = "100 BTC"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setBtcLabel() {
        self.addSubview(btcLabel)
        btcLabel.widthAnchor.constraint(equalToConstant: 201).isActive = true
        btcLabel.heightAnchor.constraint(equalToConstant: 48).isActive = true
        btcLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24).isActive = true
        btcLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 99).isActive = true



    }
    

}
