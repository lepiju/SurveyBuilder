//
//  ViewController.swift
//  SurveyBuilder
//
//  Created by redpanda on 2020-10-22.
//

import UIKit

final class MainViewController: UIViewController {
    
    private let marginView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
        
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightBeige
        return view
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Hi and Welcome to the Survey Builder App!"
        label.font = .avertaRegular
        label.textColor = .grayBlue
        label.adjustsFontForContentSizeCategory = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        setupViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViewHierarchy() {
        view.addSubview(marginView)
        marginView.addSubview(contentView)
        contentView.addSubview(welcomeLabel)
    }
    
    private func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints += [
            marginView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            marginView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16),
            marginView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            marginView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
        ]
        
        constraints += [
            contentView.topAnchor.constraint(equalTo: marginView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: marginView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: marginView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: marginView.trailingAnchor),
        ]
        
        constraints += [
            welcomeLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            welcomeLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
}
