//
//  MainViewCellFirstSection.swift
//  Test
//
//  Created by Apple on 30.11.2021.
//

import UIKit

class MainViewCellFirstSection: UITableViewCell {
    
    var models: [HorizontalCellModel]? {
        didSet {
            collectionView.reloadData()
        }
    }
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        collectionView.register(HorizontalCollectionViewCell.self, forCellWithReuseIdentifier: String(describing: HorizontalCollectionViewCell.self))
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .white
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.isUserInteractionEnabled = true
        collectionView.contentInset = UIEdgeInsets(top: 24, left: 16, bottom: 23, right: 16)
        collectionView.backgroundColor = UIColor.init(hexString: "#F4F7FB")
        return collectionView
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
        contentView.addSubview(collectionView)
    }
    
    private func setupConstraints() {

        let heightConstraint = collectionView.heightAnchor.constraint(equalToConstant: 241)
        heightConstraint.priority = UILayoutPriority(800)
        heightConstraint.isActive = true

        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            collectionView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
        ])
    }
}

extension MainViewCellFirstSection: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 238, height: 194)
    }
}

extension MainViewCellFirstSection: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: HorizontalCollectionViewCell.self), for: indexPath) as! HorizontalCollectionViewCell
        cell.setDataToCell(model: models?[indexPath.row])
        return cell
    }
}
