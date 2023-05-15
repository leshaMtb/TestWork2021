//
//  MainViewController.swift
//  Test
//
//  Created by Apple on 26.11.2021.
//

import UIKit

class MainViewController: UIViewController, MainViewInput {

    var output: MainViewOutput?

    private var mainFirstHeader: UITableViewHeaderFooterView
    private var mainSecondHeader: UITableViewHeaderFooterView
    private var mainThirdHeader: UITableViewHeaderFooterView

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.isUserInteractionEnabled = true
        tableView.showsVerticalScrollIndicator = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = UITableView.automaticDimension
        tableView.backgroundColor = UIColor.init(hexString: "#F4F7FB")
        tableView.register(MainHeaderFirstSection.self, forHeaderFooterViewReuseIdentifier: String(describing: MainHeaderFirstSection.self))
        tableView.register(MainViewCellFirstSection.self, forCellReuseIdentifier: String(describing: MainViewCellFirstSection.self))
        tableView.register(MainHeaderSecondSection.self, forHeaderFooterViewReuseIdentifier: String(describing: MainHeaderSecondSection.self))
        tableView.register(MainViewCellSecondSection.self, forCellReuseIdentifier: String(describing: MainViewCellSecondSection.self))
        tableView.register(MainHeaderThirdSection.self, forHeaderFooterViewReuseIdentifier: String(describing: MainHeaderThirdSection.self))
        tableView.register(MainViewCellThirdSection.self, forCellReuseIdentifier: String(describing: MainViewCellThirdSection.self))
        tableView.isHidden = true
        if #available(iOS 15.0, *) {
            tableView.sectionHeaderTopPadding = 0
        }
        return tableView
    }()

    private let activityIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView()
        indicator.hidesWhenStopped = true
        indicator.style = .large
        indicator.startAnimating()
        indicator.translatesAutoresizingMaskIntoConstraints = false
        return indicator
    }()

    private let refreshControl: UIRefreshControl = {
        let refresh = UIRefreshControl()
        refresh.addTarget(self, action: #selector(refreshView(sender:)), for: .valueChanged)
        return refresh
    }()

    init(header: UITableViewHeaderFooterView,
         secondHeader: UITableViewHeaderFooterView,
         thirdHeader: UITableViewHeaderFooterView) {
        self.mainFirstHeader = header
        self.mainSecondHeader = secondHeader
        self.mainThirdHeader = thirdHeader
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(hexString: "#F4F7FB")
        tableView.refreshControl = refreshControl
        tableView.dataSource = self
        tableView.delegate = self
        setupViews()
        setupConstraints()
        output?.startDataLoad()
    }

    func firstHeader() -> UITableViewHeaderFooterView {
        return mainFirstHeader
    }
    func secondHeader() -> UITableViewHeaderFooterView {
        return mainSecondHeader
    }
    func thirdHeader() -> UITableViewHeaderFooterView {
        return mainThirdHeader
    }

    func updateView() {
        tableView.isHidden = false
        activityIndicator.stopAnimating()
        tableView.reloadData()
    }

    @objc private func refreshView(sender: UIRefreshControl) {
        tableView.reloadData()
        sender.endRefreshing()
    }

    private func setupViews() {
        view.addSubview(tableView)
        view.addSubview(activityIndicator)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),

            activityIndicator.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        ])
    }
}

extension MainViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return output?.setNumberOfSection() ?? 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return  output?.numberOfRowsInSection(section: section) ?? 0
        case 1:
            return  output?.numberOfRowsInSection(section: section) ?? 0
        case 2:
            return  output?.numberOfRowsInSection(section: section) ?? 0
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MainViewCellFirstSection.self), for: indexPath) as! MainViewCellFirstSection
            cell.models = output?.setDataForHorizontalCollectionFirstSection()
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MainViewCellSecondSection.self), for: indexPath) as! MainViewCellSecondSection
            cell.setDataToCell(model: output?.setDataMainLabelSecondSection())
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MainViewCellThirdSection.self), for: indexPath) as!
                MainViewCellThirdSection
            cell.setDataToCell(model: output?.setDataThirdSection()[indexPath.row])
            return cell
        default:
            return UITableViewCell()
        }
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case 0:
            return firstHeader()
        case 1:
            return secondHeader()
        case 2:
            return thirdHeader()
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 2:
            output?.didSelectThirdSection(cell: indexPath.item)
        default:
            break
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}





