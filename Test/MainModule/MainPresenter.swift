//
//  Presenter.swift
//  Test
//
//  Created by Apple on 26.11.2021.
//

import Foundation

class Presenter: PresenterInput {

    weak var output: PresenterOutput?

    private let interactor: InteractorInput
    private let router: RouterInput
    private weak var view: MainViewInput?

    init(view: MainViewInput,
         interactor: InteractorInput,
         router: RouterInput
    ) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension Presenter: MainViewOutput {
    func startDataLoad() {
        interactor.startImitationDataLoad()
    }

    func didSelectThirdSection(cell: Int) {
        router.openNewScreen(cell: cell)
    }

    func setDataForHorizontalCollectionFirstSection() -> [HorizontalCellModel]{
        return interactor.getData().firstSection
    }

    func setDataMainLabelSecondSection() -> SecondSectionModel  {
        return interactor.getData().secondSection
    }

    func setDataThirdSection() -> [ThirdSectionModel] {
        return interactor.getData().thirdSection
    }

    func setNumberOfSection() -> Int {
        return interactor.getDataSourceArray().count
    }

    func numberOfRowsInSection(section: Int) -> Int {
        var count: Int = 0
        for i in interactor.getDataSourceArray() {
            switch section {
            case 0:
                if ((i as? [HorizontalCellModel]) != nil) {
                    count += 1
                }
            case 1:
                if ((i as? SecondSectionModel) != nil) {
                    count += 1
                }
            case 2:
                return setDataThirdSection().count
            default:
                return 0
            }
        }
        return count
    }
}

extension Presenter: InteractorOutput {
    func updateView() {
        view?.updateView()
    }
}
