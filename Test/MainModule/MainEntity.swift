//
//  Entity.swift
//  Test
//
//  Created by Apple on 29.11.2021.
//

import UIKit

struct HorizontalCellModel {
    let picture: UIImage
    let colorUnderPicture: UIColor
    let colorBackground: UIColor
    let text: String
}

struct SecondSectionModel {
    let mainLabel: String
}

struct ThirdSectionModel {
    let carPicture: UIImage
    let mainLabel: String
    let descriptionLabel: String
}

struct Data {
    let firstSection: [HorizontalCellModel]
    let secondSection: SecondSectionModel
    let thirdSection: [ThirdSectionModel]
}
