//
//  FavoriteViewController.swift
//  WeatherApp
//
//  Created by Егор Ермин on 05.04.2022.
//

import UIKit

final class FavoriteViewController: UIViewController {
    
    // MARK: - UI Elements
    
    private lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        // set properties
        searchBar.delegate = self
        return searchBar
    }()
    
    private lazy var favoriteTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(cellType: FavoriteTableViewCell.self)
        tableView.dataSource = self
        return tableView
    }()
    
    private lazy var messageLabel: UILabel = {
        let label = UILabel()
        // set properties
        return label
    }()
    
    // MARK: - Lifecycle
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubviews()
    }
    
}

// MARK: - Layout

extension FavoriteViewController {
    
    private func setupSubviews() {
        view.backgroundColor = .white
        view.addSubviews(searchBar, favoriteTableView, messageLabel)
        setConstraints()
    }
    
    private func setConstraints() {
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        favoriteTableView.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        searchBar.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        searchBar.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        
        favoriteTableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor).isActive = true
        favoriteTableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        favoriteTableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        favoriteTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        messageLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        messageLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        messageLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        messageLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
}

// MARK: - UITableViewDataSource

extension FavoriteViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // TODO: - Implement later
        40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // TODO: - Implement later
        let cell: FavoriteTableViewCell = tableView.dequeueReusableCell(
            withCellType: FavoriteTableViewCell.self,
            for: indexPath
        )
        cell.configure(with: "\(indexPath.row)")
        return cell
    }
    
}

// MARK: - UISearchBarDelegate

extension FavoriteViewController: UISearchBarDelegate { }
