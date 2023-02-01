//
//  ConferenceDetailVC.swift
//  SwiftConf
//
//  Created by Mayank Gupta on 26/01/23.
//

import UIKit

class ConferenceDetailVC: UIViewController {
    
    // MARK: - Variables
    
    var interestBtnCallback : ((Interest)->())?
    private var index: Int
    private var viewModel: ConferenceListVM
    
    private var confImage: UIImageView = {
        let confImage = UIImageView()
        confImage.contentMode = .scaleAspectFit
        confImage.translatesAutoresizingMaskIntoConstraints = false
        return confImage
    }()
    
    private var confDescriptionLbl: UILabel = {
        let confDescriptionLbl = UILabel()
        confDescriptionLbl.numberOfLines = 0
        confDescriptionLbl.font = UIFont.systemFont(ofSize: 16)
        confDescriptionLbl.translatesAutoresizingMaskIntoConstraints = false
        return confDescriptionLbl
    }()
    
    private var btnStack: UIStackView = {
        let btnStack = UIStackView()
        btnStack.axis = .horizontal
        btnStack.distribution  = .fillEqually
        btnStack.alignment = .center
        btnStack.spacing = 10
        btnStack.translatesAutoresizingMaskIntoConstraints = false
        return btnStack
    }()
    
    private var interestedBtn: UIButton = {
        let interestedBtn = UIButton()
        interestedBtn.backgroundColor = .systemOrange
        interestedBtn.translatesAutoresizingMaskIntoConstraints = false
        interestedBtn.setTitleColor(.white, for: .normal)
        interestedBtn.setTitle("Interested", for: .normal)
        return interestedBtn
    }()
    
    private var notInterestedBtn: UIButton = {
        let notInterestedBtn = UIButton()
        notInterestedBtn.layer.borderWidth = 1
        notInterestedBtn.layer.borderColor = UIColor.systemOrange.cgColor
        notInterestedBtn.translatesAutoresizingMaskIntoConstraints = false
        notInterestedBtn.setTitleColor(.systemOrange, for: .normal)
        notInterestedBtn.setTitle("Not Interested", for: .normal)
        return notInterestedBtn
    }()
    
    // MARK: - Init
    
    init(index: Int, viewModel: ConferenceListVM) {
        self.index = index
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    private func initialSetup() {
        setupSubViews()
        setupConstraints()
    }
    
    private func setupSubViews() {
        confImage.image = UIImage(named: viewModel.getConfImageOnIndex(index: index))
        confDescriptionLbl.text = viewModel.getConfDescriptionOnIndex(index: index)
        interestedBtn.addTarget(self, action: #selector(interestedBtnTapped), for: .touchUpInside)
        notInterestedBtn.addTarget(self, action: #selector(notInterestedBtnTapped), for: .touchUpInside)
        
        self.view.backgroundColor = .white
        self.btnStack.addArrangedSubview(notInterestedBtn)
        self.btnStack.addArrangedSubview(interestedBtn)
        self.view.addSubview(confImage)
        self.view.addSubview(confDescriptionLbl)
        self.view.addSubview(btnStack)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            confImage.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor, constant: 44),
            confImage.leadingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.leadingAnchor, constant: 16),
            confImage.trailingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.trailingAnchor, constant: -16),
            confImage.heightAnchor.constraint(equalToConstant: 100),
            
            confDescriptionLbl.topAnchor.constraint(equalTo: self.confImage.bottomAnchor, constant: 22),
            confDescriptionLbl.leadingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.leadingAnchor, constant: 16),
            confDescriptionLbl.trailingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.trailingAnchor, constant: -16),
            confDescriptionLbl.heightAnchor.constraint(greaterThanOrEqualToConstant: 50),
            
            
            interestedBtn.heightAnchor.constraint(equalToConstant: 50),
            notInterestedBtn.heightAnchor.constraint(equalToConstant: 50),
            
            btnStack.bottomAnchor.constraint(equalTo: self.view.layoutMarginsGuide.bottomAnchor, constant: -22),
            btnStack.leadingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.leadingAnchor, constant: 16),
            btnStack.trailingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.trailingAnchor, constant: -16),
        ])
    }
    
    @objc func interestedBtnTapped() {
        interestBtnCallback?(.interested)
        navigationController?.popViewController(animated: true)
    }
    
    @objc func notInterestedBtnTapped() {
        interestBtnCallback?(.notInterested)
        navigationController?.popViewController(animated: true)
    }
    
    
}
