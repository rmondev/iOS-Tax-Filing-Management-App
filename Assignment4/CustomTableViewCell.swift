//
//  CustomTableViewCell.swift
//  Assignment4
//
//  Created by Riccardo Moncada on 2023-11-27.
//
//  Student ID: 129698213
//  Title: Assignment 4
//  Date: Thursday November 28, 2023
//  Course: MAP253 NSA
//  Instructor: Rohit Gaur

import UIKit

class CustomTableViewCell: UITableViewCell {

    let nameLabel = UILabel()
    let phoneLabel = UILabel()
    let cityLabel = UILabel()
    let companyNameLabel = UILabel()
    let processStatusLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        // set up the label alignement
        nameLabel.textAlignment = .left
        phoneLabel.textAlignment = .left
        cityLabel.textAlignment = .left
        companyNameLabel.textAlignment = .left
        processStatusLabel.textAlignment = .left

        // add labels to the cell's content view
        contentView.addSubview(nameLabel)
        contentView.addSubview(phoneLabel)
        contentView.addSubview(cityLabel)
        contentView.addSubview(companyNameLabel)
        contentView.addSubview(processStatusLabel)

        // set constraints
        setConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setConstraints() {
        // Add constraints for the labels
        let padding: CGFloat = 10.0

        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        phoneLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        companyNameLabel.translatesAutoresizingMaskIntoConstraints = false
        processStatusLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),

            phoneLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: padding),
            phoneLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),

            cityLabel.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor, constant: padding),
            cityLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),

            companyNameLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: padding),
            companyNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),

            processStatusLabel.topAnchor.constraint(equalTo: companyNameLabel.bottomAnchor, constant: padding),
            processStatusLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
        ])
    }

}
