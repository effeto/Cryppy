//
//  View.swift
//  Cryppy
//
//  Created by Демьян on 21.05.2022.
//

import UIKit

class View: UIView {
    
    var overviewBtnAction:(() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setView() {
        setImageView()
        setOverviewBtn()
    }
    
    let imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "mainImage.png")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func setImageView() {
        self.addSubview(imageView)
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    let overviewBtn:UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 61.43, height: 61.43)
        button.backgroundColor = .white
        button.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        button.setImage(UIImage(named: "overviewBtn.png"), for: .normal)
        button.addTarget(self, action: #selector(overviewBtnTaped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setOverviewBtn() {
        self.addSubview(overviewBtn)
        overviewBtn.widthAnchor.constraint(equalToConstant: 61.43).isActive = true
        overviewBtn.heightAnchor.constraint(equalToConstant: 61.43).isActive = true
        overviewBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 287).isActive = true
        overviewBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 733).isActive = true
    }
    
    @objc func overviewBtnTaped() {
        overviewBtnAction?()
    }

}
