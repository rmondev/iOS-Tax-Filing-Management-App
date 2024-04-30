//
//  HomeScreenView.swift
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

class HomeScreenView: UIViewController {
    
    
    private var custArray = Array<Customer>() {
        didSet{myTableView.reloadData()}
    }
    
    private let myTableView = UITableView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Customers"
        view.addSubview(myTableView)
        setupTableView()
        
        //rePopDb()
    }
    
    
    private func rePopDb(){
        
        CoreDataHandler.shared.insert(name: "Leanne Graham",username: "Bret",email: "Sincere@april.biz",street: "Kulas Light",suite: "Apt. 556",city: "Gwenborough",zipcode: "Gwenborough",lat: "-37.3159",lng: "81.1496",phone: "1-770-736-8031 x56442",website: "hildegard.org",companyName: "Romaguera-Crona",companyCatchPhrase: "Multi-layered client-server neural-net",companyBs: "harness real-time e-markets",processStatus: "AWAITING"){
            print("added")
        }
        
        
        CoreDataHandler.shared.insert(name: "Ervin Howell",username: "Antonette",email: "Shanna@melissa.tv",street: "Victor Plains",suite: "Suite 879",city: "Wisokyburgh",zipcode: "90566-7771",lat: "-43.9509",lng: "-34.4618",phone: "010-692-6593 x09125",website: "anastasia.net",companyName: "Deckow-Crist",companyCatchPhrase: "Proactive didactic contingency",companyBs: "synergize scalable supply-chains",processStatus: "AWAITING") {
            print("added")
        }
        
        CoreDataHandler.shared.insert(name: "Clementine Bauch",username: "Samantha",email: "Nathan@yesenia.net",street: "Douglas Extension",suite: "Suite 847",city: "McKenziehaven",zipcode: "59590-4157",lat: "-68.6102",lng: "-47.0653",phone: "1-463-123-4447",website: "ramiro.info",companyName: "Romaguera-Jacobson",companyCatchPhrase: "Face to face bifurcated interface",companyBs: "e-enable strategic applications",processStatus: "AWAITING") {
            print("added")
        }
        
        CoreDataHandler.shared.insert(name: "Patricia Lebsack",username: "Karianne",email: "Julianne.OConner@kory.org",street: "Hoeger Mall",suite: "Apt. 692",city: "South Elvis",zipcode: "53919-4257",lat: "29.4572",lng: "-164.2990",phone: "493-170-9623 x156",website: "kale.biz",companyName: "Robel-Corkery",companyCatchPhrase: "Multi-tiered zero tolerance productivity",companyBs: "transition cutting-edge web services",processStatus: "AWAITING") {
            print("added")
        }
        
        CoreDataHandler.shared.insert(name: "Chelsey Dietrich",username: "Kamren",email: "Lucio_Hettinger@annie.ca",street: "Skiles Walks",suite: "Suite 351",city: "Roscoeview",zipcode: "33263",lat: "-31.8129",lng: "62.5342",phone: "(254)954-1289",website: "demarco.info",companyName: "Keebler LLC",companyCatchPhrase: "User-centric fault-tolerant solution",companyBs: "revolutionize end-to-end systems",processStatus: "AWAITING") {
            print("added")
        }
        
        CoreDataHandler.shared.insert(name: "Mrs. Dennis Schulist",username: "Leopoldo_Corkery",email: "Karley_Dach@jasper.info",street: "Norberto Crossing",suite: "Apt. 950",city: "South Christy",zipcode: "23505-1337",lat: "-71.4197",lng: "71.7478",phone: "1-477-935-8478 x6430",website: "ola.org",companyName: "Considine-Lockman",companyCatchPhrase: "Synchronised bottom-line interface",companyBs: "e-enable innovative applications",processStatus: "AWAITING") {
            print("added")
        }
        
        CoreDataHandler.shared.insert(name: "Kurtis Weissnat",username: "Elwyn.Skiles",email: "Telly.Hoeger@billy.biz",street: "Rex Trail",suite: "Suite 280",city: "Howemouth",zipcode: "58804-1099",lat: "24.8918",lng: "21.8984",phone: "210.067.6132",website: "elvis.io",companyName: "Johns Group",companyCatchPhrase: "Configurable multimedia task-force",companyBs: "generate enterprise e-tailers",processStatus: "AWAITING") {
            print("added")
        }
        
        CoreDataHandler.shared.insert(name: "Nicholas Runolfsdottir V",username: "Maxime_Nienow",email: "Sherwood@rosamond.me",street: "Ellsworth Summit",suite: "Suite 729",city: "Aliyaview",zipcode: "45169",lat: "-14.3990",lng: "-120.7677",phone: "586.493.6943 x140",website: "jacynthe.com",companyName: "Abernathy Group",companyCatchPhrase: "Implemented secondary concept",companyBs: "e-enable extensible e-tailers",processStatus: "AWAITING") {
            print("added")
        }
        
        CoreDataHandler.shared.insert(name: "Glenna Reichert",username: "Delphine",email: "Chaim_McDermott@dana.io",street: "Dayna Park",suite: "Suite 449",city: "Bartholomebury",zipcode: "76495-3109",lat: "24.6463",lng: "-168.8889",phone: "(775)976-6794 x41206",website: "conrad.com",companyName: "Yost and Sons", companyCatchPhrase: "Switchable contextually-based project",companyBs: "aggregate real-time technologies", processStatus: "AWAITING") {
            print("added")
        }
        
        CoreDataHandler.shared.insert(name: "Glenna Reichert",username: "Delphine",email: "Chaim_McDermott@dana.io",street: "Dayna Park",suite: "Suite 449",city: "Bartholomebury",zipcode: "76495-3109",lat: "24.6463",lng: "-168.8889",phone: "(775)976-6794 x41206",website: "conrad.com",companyName: "Yost and Sons", companyCatchPhrase: "Switchable contextually-based project",companyBs: "aggregate real-time technologies", processStatus: "AWAITING") {
            print("added")
        }
        
        CoreDataHandler.shared.insert(name: "Clementina DuBuque",username: "Moriah.Stanton",email: "Rey.Padberg@karina.biz",street: "Kattie Turnpike",suite: "Suite 198",city: "Lebsackbury",zipcode: "31428-2261",lat: "-38.2386",lng: "57.2232",phone: "024-648-3804",website: "ambrose.net",companyName: "Hoeger LLC", companyCatchPhrase: "Centralized empowering task-force",companyBs: "target end-to-end models", processStatus: "AWAITING") {
            print("added")
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        custArray = CoreDataHandler.shared.fetchData()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myTableView.frame = view.bounds
    }
    
}

extension HomeScreenView: UITableViewDataSource, UITableViewDelegate {
    
    private func setupTableView() {
        myTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "custCell")
        myTableView.dataSource = self
        myTableView.delegate = self
        
        myTableView.separatorStyle = .none
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        custArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "custCell", for: indexPath) as! CustomTableViewCell
        
        // Set text for the labels
        cell.nameLabel.text = "Name: " + custArray[indexPath.row].name!
        cell.phoneLabel.text = "Phone: " + custArray[indexPath.row].phone!
        cell.cityLabel.text = "City: " + custArray[indexPath.row].city!
        cell.companyNameLabel.text = "Company Name: " + custArray[indexPath.row].companyName!
        
        let status = custArray[indexPath.row].processStatus!
        
        switch status{
        case "AWAITING":
            cell.backgroundColor = .systemYellow
        case "COMPLETED":
            cell.backgroundColor = .systemGreen
        case "DENIED":
            cell.backgroundColor = .systemRed
        default:
            print("")
        }
        
        cell.processStatusLabel.text = "Status: " + custArray[indexPath.row].processStatus!
        
        // Add border to the cell
        cell.layer.borderWidth = 1.0
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.cornerRadius = 8.0
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(custArray[indexPath.row])
        
        let vc = CustDetailView()
        vc.customer = custArray[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    
    // MARK: Swipe on cell configuration (add info and delete buttons and corresponding actions)
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(
            style: .destructive,
            title: "",
            handler: {(_, _, success:(Bool) -> Void) in
                self.showDeleteConfirmationAlert(forItemAt: indexPath, tableView: tableView)
                success(true)
            })
        
        deleteAction.image = UIImage(systemName: "trash")
        deleteAction.backgroundColor = .systemRed
        
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction])
        swipeConfiguration.performsFirstActionWithFullSwipe = true
        
        return swipeConfiguration
    }
    
    // MARK: Delete confirmation from swipe delete selection
    func showDeleteConfirmationAlert(forItemAt indexPath: IndexPath, tableView: UITableView) {
        let alertController = UIAlertController(
            title: "Delete Customer",
            message: "Are you sure you want to delete this customer from the database?",
            preferredStyle: .alert
        )
        
        let cancelAction = UIAlertAction(
            title: "Cancel",
            style: .cancel,
            handler: nil
        )
        alertController.addAction(cancelAction)
        
        let deleteAction = UIAlertAction(
            title: "Delete",
            style: .destructive
        ) { _ in
            print(indexPath.row)
            
            // Perform delete operation
            CoreDataHandler.shared.deleteData(for: self.custArray[indexPath.row]) { [weak self] in
                print("Data deleted")
                self?.custArray.remove(at: indexPath.row)
                //tableView.deleteRows(at: [indexPath], with: .automatic)
            }
        }
        alertController.addAction(deleteAction)
        
        // Present the alert controller
        present(alertController, animated: true, completion: nil)
    }

}
