//
//  profileView.swift
//  Cryppy
//
//  Created by Демьян on 21.05.2022.
//

import UIKit

class ProfileView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setProfileView(){
        self.backgroundColor = .white
        setTitle()
    }
    
    let title: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 93, height: 22)
        label.backgroundColor = .white
        label.textColor = UIColor(red: 0.004, green: 0.173, blue: 0.341, alpha: 1)
        label.font = UIFont(name: "Poppins-Medium", size: 20)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.73
        label.attributedText = NSMutableAttributedString(string: "Profile", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
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


}
