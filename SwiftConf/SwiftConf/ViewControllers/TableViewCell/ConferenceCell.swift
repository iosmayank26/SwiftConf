//
//  ConferenceCell.swift
//  SwiftConf
//
//  Created by Mayank Gupta on 26/01/23.
//

import UIKit

class ConferenceCell: UITableViewCell {
    
    // MARK: - Variables
    
    static let identifier = "ConferenceCell"
    
    private let confImageView: UIImageView = {
        let confImage = UIImageView()
        confImage.contentMode = .scaleAspectFit
        confImage.image = UIImage(named: "SA")
        confImage.translatesAutoresizingMaskIntoConstraints = false
        return confImage
    }()
    
    private let confResponseImageView: UIImageView = {
        let confImage = UIImageView()
        confImage.contentMode = .scaleAspectFit
        confImage.image = UIImage()
        confImage.translatesAutoresizingMaskIntoConstraints = false
        return confImage
    }()
    
    private let cellDivider: UIView = {
        let cellDivider = UIView()
        cellDivider.backgroundColor = .systemOrange
        cellDivider.translatesAutoresizingMaskIntoConstraints = false
        return cellDivider
    }()
    
    private let confLabel: UILabel = {
        let confLabel = UILabel()
        confLabel.text = "Hello"
        confLabel.numberOfLines = 0
        confLabel.font = UIFont.boldSystemFont(ofSize: 16)
        confLabel.translatesAutoresizingMaskIntoConstraints = false
        return confLabel
    }()
    
    private let confDateLabel: UILabel = {
        let confDateLabel = UILabel()
        confDateLabel.text = "Hello"
        confDateLabel.numberOfLines = 0
        confDateLabel.font = UIFont.systemFont(ofSize: 14)
        confDateLabel.translatesAutoresizingMaskIntoConstraints = false
        return confDateLabel
    }()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Configure Cell
    
    func configureCell(conference: ConferenceModel) {
        confImageView.image = UIImage(named: conference.image)
        confLabel.text = conference.name
        confDateLabel.text = conference.tentativeDate
    }
    
    func configureInterest(interest: Interest) {
        switch interest {
        case .interested : confResponseImageView.image = UIImage(named: "positive")
        case .notInterested : confResponseImageView.image = UIImage(named: "negative")
        default : print("None")
        }
    }
    
    private func setupUI() {
        self.contentView.addSubview(confImageView)
        self.contentView.addSubview(confLabel)
        self.contentView.addSubview(confDateLabel)
        self.contentView.addSubview(confResponseImageView)
        self.contentView.addSubview(cellDivider)
        
        NSLayoutConstraint.activate([
            confImageView.centerYAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.centerYAnchor),
            confImageView.leadingAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.leadingAnchor, constant: 16),
            confImageView.heightAnchor.constraint(equalToConstant: 60),
            confImageView.widthAnchor.constraint(equalToConstant: 60),
            
            confLabel.topAnchor.constraint(equalTo: confImageView.topAnchor),
            confLabel.leadingAnchor.constraint(equalTo: confImageView.trailingAnchor, constant: 16),
            
            confDateLabel.topAnchor.constraint(equalTo: confLabel.bottomAnchor, constant: 10),
            confDateLabel.leadingAnchor.constraint(equalTo: confLabel.leadingAnchor),
            confDateLabel.trailingAnchor.constraint(equalTo: confLabel.trailingAnchor),
            confDateLabel.bottomAnchor.constraint(equalTo: self.cellDivider.topAnchor, constant: -32),
            
            confResponseImageView.centerYAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.centerYAnchor),
            confResponseImageView.leadingAnchor.constraint(equalTo: self.confLabel.trailingAnchor, constant: -16),
            confResponseImageView.trailingAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.trailingAnchor, constant: -16),
            confResponseImageView.heightAnchor.constraint(equalToConstant: 40),
            confResponseImageView.widthAnchor.constraint(equalToConstant: 40),
            
            cellDivider.bottomAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.bottomAnchor, constant: 0),
            cellDivider.leadingAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.leadingAnchor, constant: 12),
            cellDivider.trailingAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.trailingAnchor, constant: -12),
            cellDivider.heightAnchor.constraint(equalToConstant: 1.5)
        ])
    }
    
}
