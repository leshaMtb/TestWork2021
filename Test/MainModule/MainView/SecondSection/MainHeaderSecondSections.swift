//
//  MainHeaderSecondSections.swift
//  Test
//
//  Created by Apple on 01.12.2021.
//

import UIKit

class MainHeaderSecondSection: UITableViewHeaderFooterView {
    
    private let headerTitleLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "Как формируется цена?", textColorHEX: "#000000", sizeOfText: 20, numberOfLines: 1)
        return label
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = UIColor.init(hexString: "ffffff")
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(headerTitleLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            headerTitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            headerTitleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            headerTitleLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            headerTitleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12)
        ])
    }
}
