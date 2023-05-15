//
//  MainHeaderFirstSection.swift
//  Test
//
//  Created by Apple on 30.11.2021.
//

import UIKit

class MainHeaderFirstSection: UITableViewHeaderFooterView {

    private let headerTitleLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "Как рассчитывается цена на полис ОСАГО", textColorHEX: "#000000", sizeOfText: 28, numberOfLines: 2)
        return label
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = UIColor.init(hexString: "#F4F7FB")
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        contentView.addSubview(headerTitleLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            headerTitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            headerTitleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            headerTitleLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            headerTitleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
        ])
    }
}
