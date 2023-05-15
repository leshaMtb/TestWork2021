//
//  CustomBlueLabel.swift
//  Test
//
//  Created by Apple on 08.12.2021.
//

import UIKit

final class UICustomLabel: UILabel {
    init(textForLabel: String,
         textColorHEX: String,
         sizeOfText: CGFloat,
         numberOfLines: Int)
    {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        text = textForLabel
        textColor = UIColor.init(hexString: textColorHEX)
        font = UIFont.boldSystemFont(ofSize: sizeOfText)
        self.numberOfLines = numberOfLines
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

