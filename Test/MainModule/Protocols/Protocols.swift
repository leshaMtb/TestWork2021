//
//  Protocols.swift
//  Test
//
//  Created by Apple on 13.12.2021.
//

import UIKit

protocol MainViewOutput: AnyObject {
    func numberOfRowsInSection(section: Int) -> Int
    func didSelectThirdSection(cell: Int)
    func setDataForHorizontalCollectionFirstSection() -> [HorizontalCellModel]
    func setDataMainLabelSecondSection() -> SecondSectionModel
    func setDataThirdSection() -> [ThirdSectionModel]
    func setNumberOfSection() -> Int
    func startDataLoad()
}

protocol MainViewInput: AnyObject {
    var output: MainViewOutput? { get set }
    func updateView()
    func firstHeader() -> UITableViewHeaderFooterView
    func secondHeader() -> UITableViewHeaderFooterView
    func thirdHeader() -> UITableViewHeaderFooterView
}

protocol PresenterInput: AnyObject  {
    var output: PresenterOutput? { get set }
}

protocol PresenterOutput: AnyObject {
}

protocol InteractorInput: AnyObject {
    func startImitationDataLoad()
    func getData() -> Data
    func getDataSourceArray() -> [Any]
}

protocol InteractorOutput: AnyObject {
    func updateView()
}

protocol RouterInput: AnyObject {
    func openNewScreen(cell: Int)
}

