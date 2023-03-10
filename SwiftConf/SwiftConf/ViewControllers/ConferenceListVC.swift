//
//  ViewController.swift
//  SwiftConf
//
//  Created by Mayank Gupta on 26/01/23.
//

import UIKit

class ConferenceListVC: UIViewController {
    
    // MARK: - Variables
    
    private var tableView : UITableView!
    private var viewModel : ConferenceListVM = ConferenceListVM()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    private func initialSetup() {
        self.view.backgroundColor = .systemTeal
        self.navigationItem.title = "Swift Conferences 2023"
        setupTableView()
    }
    
    private func setupTableView() {
        tableView = UITableView()
        self.view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorColor = .clear
        tableView.separatorStyle = .none
        tableView.estimatedRowHeight = 92
        tableView.rowHeight = UITableView.automaticDimension
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        // Register cells
        tableView.register(ConferenceCell.self, forCellReuseIdentifier: ConferenceCell.identifier)
        
        addTableViewConstraints()
    }
    
    private func addTableViewConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
    }
    
}

// MARK: - UITableView DataSource Methods

extension ConferenceListVC : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ConferenceCell.identifier, for: indexPath) as? ConferenceCell else { return UITableViewCell() }
        cell.configureCell(conference: viewModel.cellForRowConferenceData(index: indexPath.row))
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let destinationController = ConferenceDetailVC(index: indexPath.row, viewModel: self.viewModel)
        destinationController.interestBtnCallback = { [weak self] selectedInterest in
            guard let weakSelf = self, let cell = weakSelf.tableView.cellForRow(at: indexPath) as? ConferenceCell else {return}
            cell.configureInterest(interest: selectedInterest)
        }
        navigationController?.pushViewController(destinationController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

// MARK: - UITableView Delegate Methods

extension ConferenceListVC : UITableViewDelegate {
    
}

