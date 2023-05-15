//
//  MainViewCellSecondSection.swift
//  Test
//
//  Created by Apple on 01.12.2021.
//

import UIKit

class MainViewCellSecondSection: UITableViewCell {
    
    func setDataToCell(model: SecondSectionModel?) {
        insurancePriceLabel.text = model?.mainLabel
    }
    
    private let containerView: UIView = {
        let mainView = UIView()
        mainView.layer.cornerRadius = 16
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.backgroundColor = UIColor.init(hexString: "#F4F7FB")
        return mainView
    }()
    
    let insurancePriceLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "", textColorHEX: "#000000", sizeOfText: 17, numberOfLines: 1)
        return label
    }()

    private let equalsSymbolLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "=", textColorHEX: "#B3BAC3", sizeOfText: 20, numberOfLines: 1)
        return label
    }()

    private let BTLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "БТ", textColorHEX: "#00AFFF", sizeOfText: 17, numberOfLines: 1)
        return label
    }()

    private let KMLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "КМ", textColorHEX: "#00AFFF", sizeOfText: 17, numberOfLines: 1)
        return label
    }()

    private let KTLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "КТ", textColorHEX: "#00AFFF", sizeOfText: 17, numberOfLines: 1)
        return label
    }()
    
    private let KBMLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "КБМ", textColorHEX: "#00AFFF", sizeOfText: 17, numberOfLines: 1)
        return label
    }()
    
    private let KOLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "КО", textColorHEX: "#00AFFF", sizeOfText: 17, numberOfLines: 1)
        return label
    }()
    
    private let KVSLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "КВС", textColorHEX: "#00AFFF", sizeOfText: 17, numberOfLines: 1)
        return label
    }()
    
    private let baseRateLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "Базовый тариф", textColorHEX: "#000000", sizeOfText: 13, numberOfLines: 2)
        return label
    }()
    
    private let powerFactorLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "Коэффициент мощности", textColorHEX: "#000000", sizeOfText: 13, numberOfLines: 2)
        return label
    }()
    
    private let territoryFactorLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "Коэффициент территории", textColorHEX: "#000000", sizeOfText: 13, numberOfLines: 2)
        return label
    }()
    
    private let safetyFactorLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "Коэффициент безаварийности", textColorHEX: "#000000", sizeOfText: 13, numberOfLines: 2)
        return label
    }()
    
    private let constraintFactorLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "Коэффициент ограничений", textColorHEX: "#000000", sizeOfText: 13, numberOfLines: 2)
        return label
    }()
    
    private let ageAndExperienceFactorLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "Коэффициент возраст-стаж", textColorHEX: "#000000", sizeOfText: 13, numberOfLines: 2)
        return label
    }()
    
    private let xLabel: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "×", textColorHEX: "#B3BAC3", sizeOfText: 14, numberOfLines: 1)
        return label
    }()
    
    private let xLabel1: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "×", textColorHEX: "#B3BAC3", sizeOfText: 14, numberOfLines: 1)
        return label
    }()
    
    private let xLabel2: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "×", textColorHEX: "#B3BAC3", sizeOfText: 14, numberOfLines: 1)
        return label
    }()
    
    private let xLabel3: UICustomLabel = {
        let label = UICustomLabel(textForLabel: "×", textColorHEX: "#B3BAC3", sizeOfText: 14, numberOfLines: 1)
        return label
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
        contentView.addSubview(containerView)
        containerView.addSubview(insurancePriceLabel)
        containerView.addSubview(equalsSymbolLabel)
        containerView.addSubview(BTLabel)
        containerView.addSubview(KMLabel)
        containerView.addSubview(KTLabel)
        containerView.addSubview(baseRateLabel)
        containerView.addSubview(powerFactorLabel)
        containerView.addSubview(territoryFactorLabel)
        containerView.addSubview(KBMLabel)
        containerView.addSubview(KOLabel)
        containerView.addSubview(KVSLabel)
        containerView.addSubview(safetyFactorLabel)
        containerView.addSubview(constraintFactorLabel)
        containerView.addSubview(ageAndExperienceFactorLabel)
        containerView.addSubview(xLabel)
        containerView.addSubview(xLabel1)
        containerView.addSubview(xLabel2)
        containerView.addSubview(xLabel3)
    }
    
    private func setupConstraints() {
        let heightConstraint = containerView.heightAnchor.constraint(equalToConstant: 184)
        heightConstraint.priority = UILayoutPriority(800)
        heightConstraint.isActive = true

        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            containerView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            containerView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),

            insurancePriceLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16),
            insurancePriceLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            insurancePriceLabel.widthAnchor.constraint(equalToConstant: 107),
            
            equalsSymbolLabel.leftAnchor.constraint(equalTo: insurancePriceLabel.rightAnchor, constant: 8),
            equalsSymbolLabel.topAnchor.constraint(equalTo: insurancePriceLabel.topAnchor, constant: 0),
            equalsSymbolLabel.widthAnchor.constraint(equalToConstant: 12),
            
            BTLabel.topAnchor.constraint(equalTo: insurancePriceLabel.bottomAnchor, constant: 14),
            BTLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            BTLabel.widthAnchor.constraint(equalToConstant: 22),
            
            KMLabel.topAnchor.constraint(equalTo: insurancePriceLabel.bottomAnchor, constant: 14),
            KMLabel.leftAnchor.constraint(equalTo: BTLabel.rightAnchor, constant: 58),
            KMLabel.widthAnchor.constraint(equalToConstant: 28),
            
            KTLabel.topAnchor.constraint(equalTo: insurancePriceLabel.bottomAnchor, constant: 14),
            KTLabel.leftAnchor.constraint(equalTo: KMLabel.rightAnchor, constant: 80),
            KTLabel.widthAnchor.constraint(equalToConstant: 28),
            
            baseRateLabel.topAnchor.constraint(equalTo: BTLabel.bottomAnchor, constant: 0),
            baseRateLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            baseRateLabel.widthAnchor.constraint(equalToConstant: 63),
            
            powerFactorLabel.topAnchor.constraint(equalTo: BTLabel.bottomAnchor, constant: 0),
            powerFactorLabel.leftAnchor.constraint(equalTo: baseRateLabel.rightAnchor, constant: 17),
            powerFactorLabel.widthAnchor.constraint(equalToConstant: 100),
            
            territoryFactorLabel.topAnchor.constraint(equalTo: KTLabel.bottomAnchor, constant: 0),
            territoryFactorLabel.leftAnchor.constraint(equalTo: KTLabel.leftAnchor, constant: 0),
            territoryFactorLabel.widthAnchor.constraint(equalToConstant: 100),
            
            KBMLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 110),
            KBMLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            KBMLabel.widthAnchor.constraint(equalToConstant: 38),
            
            KOLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 110),
            KOLabel.leftAnchor.constraint(equalTo: KBMLabel.rightAnchor, constant: 82),
            KOLabel.widthAnchor.constraint(equalToConstant: 25),
            
            KVSLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 110),
            KVSLabel.leftAnchor.constraint(equalTo: KOLabel.rightAnchor, constant: 80),
            KVSLabel.widthAnchor.constraint(equalToConstant: 36),
            
            safetyFactorLabel.topAnchor.constraint(equalTo: KBMLabel.bottomAnchor, constant: 0),
            safetyFactorLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            safetyFactorLabel.widthAnchor.constraint(equalToConstant: 121),
            
            constraintFactorLabel.topAnchor.constraint(equalTo: KBMLabel.bottomAnchor, constant: 0),
            constraintFactorLabel.leftAnchor.constraint(equalTo: KOLabel.leftAnchor, constant: 0),
            constraintFactorLabel.widthAnchor.constraint(equalToConstant: 121),
            
            ageAndExperienceFactorLabel.topAnchor.constraint(equalTo: KBMLabel.bottomAnchor, constant: 0),
            ageAndExperienceFactorLabel.leftAnchor.constraint(equalTo: KVSLabel.leftAnchor, constant: 0),
            ageAndExperienceFactorLabel.widthAnchor.constraint(equalToConstant: 121),
            
            xLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 68),
            xLabel.rightAnchor.constraint(equalTo: KMLabel.leftAnchor, constant: -8),
            xLabel.widthAnchor.constraint(equalToConstant: 8),
            
            xLabel1.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 68),
            xLabel1.rightAnchor.constraint(equalTo: KTLabel.leftAnchor, constant: -4),
            xLabel1.widthAnchor.constraint(equalToConstant: 8),
            
            xLabel2.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 132),
            xLabel2.rightAnchor.constraint(equalTo: constraintFactorLabel.leftAnchor, constant: -4),
            xLabel2.widthAnchor.constraint(equalToConstant: 8),
            
            xLabel3.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 132),
            xLabel3.rightAnchor.constraint(equalTo: ageAndExperienceFactorLabel.leftAnchor, constant: -4),
            xLabel3.widthAnchor.constraint(equalToConstant: 8),
        ])
    }
}

