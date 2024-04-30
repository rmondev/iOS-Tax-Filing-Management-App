//
//  CustDetailView.swift
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

class CustDetailView: UIViewController{

    var customer: Customer?
    
    private let tfPhone:UITextField = {
      let textField = UITextField()
      textField.textAlignment = .center
      textField.borderStyle = .roundedRect
      textField.backgroundColor = .systemFill
      textField.autocorrectionType = .no
      return textField
    }()
    
    private let segProcessStatus: UISegmentedControl = {
        let segmentControl = UISegmentedControl(items: ["AWAITING", "DENIED", "COMPLETED"])
        segmentControl.addTarget(self, action: #selector(segmentValueChanged(_:)), for: .valueChanged)

        return segmentControl
    }()

    
    private let lblName:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        
        return label
    }()
    
    private let lblPhone:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        
        return label
    }()
    
    private let lblAddress:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        
        return label
    }()
    
    private let lblStreet:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        
        return label
    }()
    
    private let lblSuite:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        
        return label
    }()
    
    private let lblCity:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        
        return label
    }()
    
    private let lblZipCode:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        
        return label
    }()
    
    private let lblGeo:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        
        return label
    }()
    
    private let lblLat:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        
        return label
    }()
    
    private let lblLng:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        
        return label
    }()
    
    private let lblWebSite:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        
        return label
    }()
    
    private let lblCompanyName:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        
        return label
    }()
    
    private let lblProcessStatus:UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        
        return label
    }()
    
    
    
    private let saveButton:UIButton = {
      let button = UIButton()
      button.setTitle("Save", for: .normal)
      button.backgroundColor = .systemBlue
      button.layer.cornerRadius = 6
      return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Customer Details"
        
        view.backgroundColor = .systemBackground
        saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        
        
        view.addSubview(lblName)
        view.addSubview(lblPhone)
        view.addSubview(tfPhone)
        view.addSubview(lblAddress)
        view.addSubview(lblSuite)
        view.addSubview(lblStreet)
        view.addSubview(lblCity)
        view.addSubview(lblZipCode)
        view.addSubview(lblGeo)
        view.addSubview(lblLat)
        view.addSubview(lblLng)
        view.addSubview(lblWebSite)
        view.addSubview(lblCompanyName)
        view.addSubview(lblProcessStatus)
        view.addSubview(segProcessStatus)
       
        view.addSubview(saveButton)
        
        if let customer = customer {
            lblName.text = "| Name | : " + customer.name!
            lblPhone.text = "| Phone | :"
            tfPhone.text = customer.phone!
            lblAddress.text = "| Address | :"
            lblSuite.text = "Suite: " + customer.suite!
            lblStreet.text = "Street: " + customer.street!
            lblCity.text = "City: " + customer.city!
            lblZipCode.text = "Zip Code: " + customer.zipcode!
            lblGeo.text = "| Geo | :"
            lblLat.text = "Latitude: " + customer.lat!
            lblLng.text = "Longitude: " + customer.lng!
            lblWebSite.text = "Website: " + customer.website!
            lblCompanyName.text = "Company Name: " + customer.companyName!
            lblProcessStatus.text = "| Process Status | : "
            
            
            
            
            let status = customer.processStatus!
            
            switch status{
            case "AWAITING":
                segProcessStatus.selectedSegmentIndex = 0
                segProcessStatus.backgroundColor = .systemYellow
            case "COMPLETED":
                segProcessStatus.selectedSegmentIndex = 2
                segProcessStatus.backgroundColor = .systemGreen
            case "DENIED":
                segProcessStatus.selectedSegmentIndex = 1
                segProcessStatus.backgroundColor = .systemRed
            default:
                break
            }
        }
    }
    
    //Segmented control action
    @objc func segmentValueChanged(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            segProcessStatus.backgroundColor = .systemYellow
        case 1:
            segProcessStatus.backgroundColor = .systemRed
        case 2:
            segProcessStatus.backgroundColor = .systemGreen
        default:
            break
        }
    }
    
    override func viewDidLayoutSubviews() {
      super.viewDidLayoutSubviews()
      
        lblName.frame = CGRect(x: 40, y: view.safeTop + 40, width: view.width - 80, height: 20)
        lblPhone.frame = CGRect(x: 40, y: lblName.bottom + 20, width: view.width - 80, height: 20)
        tfPhone.frame = CGRect(x: 40, y: lblPhone.bottom + 20, width: view.width - 80, height: 20)
        lblAddress.frame = CGRect(x: 40, y: tfPhone.bottom + 20, width: view.width - 80, height: 20)
        lblSuite.frame = CGRect(x: 40, y: lblAddress.bottom + 20, width: view.width - 80, height: 20)
        lblStreet.frame = CGRect(x: 40, y: lblSuite.bottom + 20, width: view.width - 80, height: 20)
        lblCity.frame = CGRect(x: 40, y: lblStreet.bottom + 20, width: view.width - 80, height: 20)
        lblZipCode.frame = CGRect(x: 40, y: lblCity.bottom + 20, width: view.width - 80, height: 20)
        lblGeo.frame = CGRect(x: 40, y: lblZipCode.bottom + 20, width: view.width - 80, height: 20)
        lblLat.frame = CGRect(x: 40, y: lblGeo.bottom + 20, width: view.width - 80, height: 20)
        lblLng.frame = CGRect(x: 40, y: lblLat.bottom + 20, width: view.width - 80, height: 20)
        lblWebSite.frame = CGRect(x: 40, y: lblLng.bottom + 20, width: view.width - 80, height: 20)
        lblCompanyName.frame = CGRect(x: 40, y: lblWebSite.bottom + 20, width: view.width - 80, height: 20)
        lblProcessStatus.frame = CGRect(x: 40, y: lblCompanyName.bottom + 20, width: view.width - 80, height: 20)
        segProcessStatus.frame = CGRect(x: 40, y: lblProcessStatus.bottom + 20, width: view.width - 80, height: 40)
        saveButton.frame = CGRect(x: 40, y: segProcessStatus.bottom + 20, width: view.width - 80, height: 40)
    }
    
    @objc private func saveButtonTapped() {

        var status: String
        var segmentIndex: Int
        var phone: String
        
        segmentIndex = segProcessStatus.selectedSegmentIndex
        
        if (segmentIndex == 0){
            status = "AWAITING"
        } else if (segmentIndex == 1){
            status = "DENIED"
        }else{
            status = "COMPLETED"
        }
        
        phone = tfPhone.text!
        
        if let customer = customer {
            
            print(phone)
            
            CoreDataHandler.shared.update(customer: customer, phone: phone, processStatus: status) { [weak self] in
                self?.navigationController?.popViewController(animated: true)
              }
        }
    }
}


