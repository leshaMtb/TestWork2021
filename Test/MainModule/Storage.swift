//
//  Storage.swift
//  Test
//
//  Created by Apple on 30.11.2021.
//

import UIKit

class Storage {
    public static let data = Data(firstSection:
                                    [HorizontalCellModel(picture: #imageLiteral(resourceName: "plane"), colorUnderPicture: UIColor.init(hexString: "#bdebff"), colorBackground: UIColor.init(hexString: "#2D9CDB"), text: "Цена ОСАГО каждый год меняется, то вверх, то вниз, даже если не было аварий. Разложим цену по полочкам"),
                                     HorizontalCellModel(picture: #imageLiteral(resourceName: "purse"), colorUnderPicture: UIColor.init(hexString: "#b2adfd"), colorBackground: UIColor.init(hexString: "#805CF5"), text: "Базовый тариф - единственный параметр, который индивидуально устанавливается страховой компанией, все остальные параметры едины для всех"),
                                     HorizontalCellModel(picture: #imageLiteral(resourceName: "percent"), colorUnderPicture: UIColor.init(hexString: "#deb394"), colorBackground: UIColor.init(hexString: "#FF9500"), text: "К полису будет применяться “самый плохой” КБМ из всех водителей, то есть за аварийных водителей придется заплатить"),
                                     HorizontalCellModel(picture: #imageLiteral(resourceName: "chair"), colorUnderPicture: UIColor.init(hexString: "#a4e2b1"), colorBackground: UIColor.init(hexString: "#0DD149"), text: "Как и с КБМ - для расчета цены и оформления всегда будут применяться данные самого молодого и неопытного водителя"),
                                     HorizontalCellModel(picture: #imageLiteral(resourceName: "camaro"), colorUnderPicture: UIColor.init(hexString: "#b5c6ff"), colorBackground: UIColor.init(hexString: "#5047D7"), text: "Цены на полис ОСАГО будут одинаковые на сайте страховоых, у агента или на сайте сравнения. На сайтах сравнения обычно немного удобнее")],
                                  secondSection: SecondSectionModel(mainLabel: "Цена ОСАГO"),
                                  thirdSection: [ThirdSectionModel(carPicture: #imageLiteral(resourceName: "firstCarPicture") , mainLabel: "БТ Базовый тариф ", descriptionLabel: "Устанавливается индивидуально каждой страховой от 2 471 до 5 436 Р"),
                                                 ThirdSectionModel(carPicture: #imageLiteral(resourceName: "secondCarPicture"), mainLabel: "КМ Коэффициент мощности", descriptionLabel: "Чем мощнее ваш автомоибиль, тем выше будет коэффициент и цена"),
                                                 ThirdSectionModel(carPicture: #imageLiteral(resourceName: "thirdCarPicture"), mainLabel: "КТ Коэффициент территории", descriptionLabel: "Всегда применяется по прописке собственника автомобиля"),
                                                 ThirdSectionModel(carPicture: #imageLiteral(resourceName: "fourthCarPicture"), mainLabel: "КБМ Коэффициент бонус-малус", descriptionLabel: "Персональная накопленная скидка каждого водителя за безаварийность"),
                                                 ThirdSectionModel(carPicture: #imageLiteral(resourceName: "fifthCarPicture"), mainLabel: "КО Коэффициент ограничений", descriptionLabel: "Если страховка “без ограничений” - полис будет в 2 раза дороже"),
                                                 ThirdSectionModel(carPicture: #imageLiteral(resourceName: "sixthCarPicture"), mainLabel: "КВС Коэффициент возраст-стаж", descriptionLabel: "Чем старше и опытнее водитель - тем дешевле будет стоить полис")])

    public static let dataSourceArray =  [data.firstSection,data.secondSection,data.thirdSection] as [Any]
}


