//
//  HorizontalCollectionViewCell.swift
//  Test
//
//  Created by Apple on 30.11.2021.
//

import UIKit

class HorizontalCollectionViewCell: UICollectionViewCell {

    func setDataToCell(model: HorizontalCellModel?) {
        textDescription.text = model?.text
        pictureImage.image = model?.picture
        backgroundViewForPicture.backgroundColor = model?.colorUnderPicture
        contentView.backgroundColor = model?.colorBackground
    }
    
    let pictureImage: UIImageView = {
        let pictureImage = UIImageView()
        pictureImage.contentMode = .scaleAspectFit
        pictureImage.layer.cornerRadius = 22
        pictureImage.clipsToBounds = true
        pictureImage.contentMode = .center
        pictureImage.translatesAutoresizingMaskIntoConstraints = false
        return pictureImage
    }()
    
    let backgroundViewForPicture: UIView = {
        let backgroundView = UIView()
        backgroundView.layer.cornerRadius = 22
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.backgroundColor = UIColor.clear
        return backgroundView
    }()
    
    let textDescription: UITextView = {
        let textDescription = UITextView()
        textDescription.sizeToFit()
        textDescription.backgroundColor = .clear
        textDescription.font = UIFont.systemFont(ofSize: 15)
        textDescription.textColor = UIColor.init(hexString: "ffffff")
        textDescription.translatesAutoresizingMaskIntoConstraints = false
        textDescription.isEditable = false
        return textDescription
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        contentView.layer.cornerRadius = 14
        setupViews()
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(backgroundViewForPicture)
        backgroundViewForPicture.addSubview(pictureImage)
        contentView.addSubview(textDescription)
    }
    
    private func setupContraints() {
        NSLayoutConstraint.activate([
            backgroundViewForPicture.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            backgroundViewForPicture.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12),
            backgroundViewForPicture.heightAnchor.constraint(equalToConstant: 44),
            backgroundViewForPicture.widthAnchor.constraint(equalToConstant: 44),

            pictureImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            pictureImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12),
            pictureImage.heightAnchor.constraint(equalToConstant: 44),
            pictureImage.widthAnchor.constraint(equalToConstant: 44),
            
            textDescription.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 68),
            textDescription.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12),
            textDescription.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12),
            textDescription.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
        ])
    }
}
