//
//  Router.swift
//  Test
//
//  Created by Apple on 26.11.2021.
//

import UIKit

class Router: RouterInput {
    
    weak var rootViewController: UIViewController?
    
    func openNewScreen(cell: Int) {
        print("Вы нажали на ячейку \(cell) третьей секции")
        let vc = UIViewController(nibName: nil, bundle: nil)
        vc.view.backgroundColor = UIColor.init(hexString: "ffffff")
        rootViewController?.present(vc, animated: true, completion: nil)
    }
}
