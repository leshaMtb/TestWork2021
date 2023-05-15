//
//  MainViewCellThirdSection.swift
//  Test
//
//  Created by Apple on 10.12.2021.
//

import UIKit

class MainViewCellThirdSection: UITableViewCell {

    func setDataToCell(model: ThirdSectionModel?) {
        let myAttribetedString = NSMutableAttributedString(string: model?.mainLabel ?? "")
        let myRange = NSRange(location: 0, length: 3)
        myAttribetedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.init(hexString: "#00AFFF"), range: myRange)

        carPicture.image = model?.carPicture
        descriptionLabel.text = model?.descriptionLabel
        mainLabel.attributedText = myAttribetedString
    }

    let mainLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Устанавливается индивидуально каждой страховой от 2 471 до 5 436 Р"
        label.textColor = UIColor.init(hexString: "#99A1AB")
        label.font = UIFont.systemFont(ofSize: 13)
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let carPicture: UIImageView = {
        let carPicture = UIImageView()
        carPicture.image = #imageLiteral(resourceName: "firstCarPicture")
        carPicture.layer.cornerRadius = 12
        carPicture.translatesAutoresizingMaskIntoConstraints = false
        return carPicture
    }()

    private let arrowRight: UIImageView = {
        let arrowRight = UIImageView()
        arrowRight.image = #imageLiteral(resourceName: "arrowRight")
        arrowRight.translatesAutoresizingMaskIntoConstraints = false
        return arrowRight
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    private func setupViews() {
        contentView.addSubview(mainLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(arrowRight)
        contentView.addSubview(carPicture)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            carPicture.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0),
            carPicture.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            carPicture.heightAnchor.constraint(equalToConstant: 44),
            carPicture.widthAnchor.constraint(equalToConstant: 44),

            mainLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            mainLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 72),
            mainLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -48),

            arrowRight.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0),
            arrowRight.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -23),
            arrowRight.heightAnchor.constraint(equalToConstant: 12),
            arrowRight.widthAnchor.constraint(equalToConstant: 6),

            descriptionLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 2),
            descriptionLabel.leftAnchor.constraint(equalTo: mainLabel.leftAnchor, constant: 0),
            descriptionLabel.rightAnchor.constraint(equalTo: mainLabel.rightAnchor, constant: 0),
            descriptionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12)
        ])
    }
}


