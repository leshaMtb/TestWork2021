//
//  ThirrdSectionHeader.swift
//  Test
//
//  Created by Apple on 10.12.2021.
//


import UIKit

class MainHeaderThirdSection: UITableViewHeaderFooterView {

    private let headerTitleLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "Подробнее о коэффициентах", textColorHEX: "#000000", sizeOfText: 20, numberOfLines: 1)
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
            headerTitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            headerTitleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            headerTitleLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            headerTitleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
        ])
    }
}
