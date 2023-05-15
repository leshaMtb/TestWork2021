//
//  Interactor.swift
//  Test
//
//  Created by Apple on 26.11.2021.
//

import Foundation

class Interactor: InteractorInput {
 
    weak var output: InteractorOutput?

    var data: Data = Data(firstSection: [], secondSection: SecondSectionModel(mainLabel: ""), thirdSection: [])

    func startImitationDataLoad() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.data = Storage.data
            self.output?.updateView()
        }
    }

    func getData() -> Data {
        return data
    }

    func getDataSourceArray() -> [Any] {
        return Storage.dataSourceArray
    }
}


