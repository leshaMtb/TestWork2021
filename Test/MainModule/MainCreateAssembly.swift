//
//  CreateAssembly.swift
//  Test
//
//  Created by Apple on 29.11.2021.
//

import UIKit

class CreateAssembly {
    static func createModule() -> UIViewController {

        let view = MainViewController(header: MainHeaderFirstSection(),secondHeader: MainHeaderSecondSection(),thirdHeader: MainHeaderThirdSection())
        let interactor = Interactor()
        let router = Router()
        let presenter = Presenter(view: view, interactor: interactor, router: router)
        
        interactor.output = presenter
        view.output = presenter
        router.rootViewController = view
        
        return view
    }
}
