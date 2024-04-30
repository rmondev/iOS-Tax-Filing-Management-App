//
//  ViewController.swift
//  Assignment4
//
//  Created by Riccardo Moncada on 2023-11-27.
//

//import UIKit
//import CoreData
//
//class ViewController: UIViewController {
//
//    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
        
        //addCustomer(name: "Leanne Graham",username: "Bret",email: "Sincere@april.biz",street: "Kulas Light",suite: "Apt. 556",city: "Gwenborough",zipcode: "Gwenborough",lat: "-37.3159",lng: "81.1496",phone: "1-770-736-8031 x56442",website: "hildegard.org",companyName: "Romaguera-Crona",companyCatchPhrase: "Multi-layered client-server neural-net",companyBs: "harness real-time e-markets",processStatus: "AWAITING")
        
        //addCustomer(name: "Ervin Howell",username: "Antonette",email: "Shanna@melissa.tv",street: "Victor Plains",suite: "Suite 879",city: "Wisokyburgh",zipcode: "90566-7771",lat: "-43.9509",lng: "-34.4618",phone: "010-692-6593 x09125",website: "anastasia.net",companyName: "Deckow-Crist",companyCatchPhrase: "Proactive didactic contingency",companyBs: "synergize scalable supply-chains",processStatus: "AWAITING")
          
        //addCustomer(name: "Clementine Bauch",username: "Samantha",email: "Nathan@yesenia.net",street: "Douglas Extension",suite: "Suite 847",city: "McKenziehaven",zipcode: "59590-4157",lat: "-68.6102",lng: "-47.0653",phone: "1-463-123-4447",website: "ramiro.info",companyName: "Romaguera-Jacobson",companyCatchPhrase: "Face to face bifurcated interface",companyBs: "e-enable strategic applications",processStatus: "AWAITING")
          
        //addCustomer(name: "Patricia Lebsack",username: "Karianne",email: "Julianne.OConner@kory.org",street: "Hoeger Mall",suite: "Apt. 692",city: "South Elvis",zipcode: "53919-4257",lat: "29.4572",lng: "-164.2990",phone: "493-170-9623 x156",website: "kale.biz",companyName: "Robel-Corkery",companyCatchPhrase: "Multi-tiered zero tolerance productivity",companyBs: "transition cutting-edge web services",processStatus: "AWAITING")
          
        //addCustomer(name: "Chelsey Dietrich",username: "Kamren",email: "Lucio_Hettinger@annie.ca",street: "Skiles Walks",suite: "Suite 351",city: "Roscoeview",zipcode: "33263",lat: "-31.8129",lng: "62.5342",phone: "(254)954-1289",website: "demarco.info",companyName: "Keebler LLC",companyCatchPhrase: "User-centric fault-tolerant solution",companyBs: "revolutionize end-to-end systems",processStatus: "AWAITING")
            
        //addCustomer(name: "Mrs. Dennis Schulist",username: "Leopoldo_Corkery",email: "Karley_Dach@jasper.info",street: "Norberto Crossing",suite: "Apt. 950",city: "South Christy",zipcode: "23505-1337",lat: "-71.4197",lng: "71.7478",phone: "1-477-935-8478 x6430",website: "ola.org",companyName: "Considine-Lockman",companyCatchPhrase: "Synchronised bottom-line interface",companyBs: "e-enable innovative applications",processStatus: "AWAITING")
          
        //addCustomer(name: "Kurtis Weissnat",username: "Elwyn.Skiles",email: "Telly.Hoeger@billy.biz",street: "Rex Trail",suite: "Suite 280",city: "Howemouth",zipcode: "58804-1099",lat: "24.8918",lng: "21.8984",phone: "210.067.6132",website: "elvis.io",companyName: "Johns Group",companyCatchPhrase: "Configurable multimedia task-force",companyBs: "generate enterprise e-tailers",processStatus: "AWAITING")
          
        //addCustomer(name: "Nicholas Runolfsdottir V",username: "Maxime_Nienow",email: "Sherwood@rosamond.me",street: "Ellsworth Summit",suite: "Suite 729",city: "Aliyaview",zipcode: "45169",lat: "-14.3990",lng: "-120.7677",phone: "586.493.6943 x140",website: "jacynthe.com",companyName: "Abernathy Group",companyCatchPhrase: "Implemented secondary concept",companyBs: "e-enable extensible e-tailers",processStatus: "AWAITING")
        
        //addCustomer(name: "Glenna Reichert",username: "Delphine",email: "Chaim_McDermott@dana.io",street: "Dayna Park",suite: "Suite 449",city: "Bartholomebury",zipcode: "76495-3109",lat: "24.6463",lng: "-168.8889",phone: "(775)976-6794 x41206",website: "conrad.com",companyName: "Yost and Sons", companyCatchPhrase: "Switchable contextually-based project",companyBs: "aggregate real-time technologies", processStatus: "AWAITING")
        
        //addCustomer(name: "Glenna Reichert",username: "Delphine",email: "Chaim_McDermott@dana.io",street: "Dayna Park",suite: "Suite 449",city: "Bartholomebury",zipcode: "76495-3109",lat: "24.6463",lng: "-168.8889",phone: "(775)976-6794 x41206",website: "conrad.com",companyName: "Yost and Sons", companyCatchPhrase: "Switchable contextually-based project",companyBs: "aggregate real-time technologies", processStatus: "AWAITING")
        
        //addCustomer(name: "Clementina DuBuque",username: "Moriah.Stanton",email: "Rey.Padberg@karina.biz",street: "Kattie Turnpike",suite: "Suite 198",city: "Lebsackbury",zipcode: "31428-2261",lat: "-38.2386",lng: "57.2232",phone: "024-648-3804",website: "ambrose.net",companyName: "Hoeger LLC", companyCatchPhrase: "Centralized empowering task-force",companyBs: "target end-to-end models", processStatus: "AWAITING")
        
        
        //fetchAllCustomers(processStatus: "AWAITING")
        
        //deleteCustomer()
        //fetchAllCustomers()
        
        
// }
    
//    func addCustomer(name: String,
//                     username: String,
//                     email: String,
//                     street: String,
//                     suite: String,
//                     city: String,
//                     zipcode: String,
//                     lat: String,
//                     lng: String,
//                     phone: String,
//                     website: String,
//                     companyName: String,
//                     companyCatchPhrase: String,
//                     companyBs: String,
//                     processStatus: String){
//        
//        // 1. Create Customer Oject
//        let cust = Customer(context: context)
//        
//        // 2. Set the properties of that object
//        cust.name = name
//        cust.username = username
//        cust.email = email
//        cust.street = street
//        cust.suite = suite
//        cust.city = city
//        cust.zipcode = zipcode
//        cust.lat = lat
//        cust.lng = lng
//        cust.phone = phone
//        cust.website = website
//        cust.companyName = companyName
//        cust.companyCatchPhrase = companyCatchPhrase
//        cust.companyBs = companyBs
//        cust.processStatus = processStatus
//        
//        // 3. Use the context variable to save the customer to the database table
//        
//        do {
//            try context.save()
//            print("Customer Saved!")
//        } catch {
//            print("Saved Failed!")
//        }
//    }
    
//    
//    func fetchAllCustomers() {
//        let fetchRequest: NSFetchRequest<Customer> = Customer.fetchRequest()
//        
//        
//        do {
//          let customers = try context.fetch(fetchRequest)
//          
//          for cust in customers {
//            print(cust.name ?? "")
//            print("-----------")
//          }
//        } catch {
//          print("Failed to fetch employees")
//        }
//    }
//    
//    func fetchAllCustomers(processStatus: String){
//        let fetchRequest: NSFetchRequest<Customer> = Customer.fetchRequest()
//        
//        // same as WHERE clause
//        fetchRequest.predicate = NSPredicate(format: "processStatus = %@", "\(processStatus)")
//        
//        do {
//          let customers = try context.fetch(fetchRequest)
//          
//          for cust in customers {
//            print(cust.name ?? "")
//
//            print("-----------")
//          }
//        } catch {
//          print("Failed to fetch employees")
//        }
//    }
//    
//    func updateCustomer() {
//        let fetchRequest: NSFetchRequest<Customer> = Customer.fetchRequest()
//        
//        do {
//          let customers = try context.fetch(fetchRequest)
//          
//            // get reference to an customer object
//          let cust = customers.first
//            // update the property on that object
//          cust?.name = "Jack Allen"
//          try context.save()
//          
//            print("Employee updated")
//        } catch {
//          print("Failed to update employee")
//        }
//      }
//    
//    func deleteCustomer(){
//        let fetchRequest: NSFetchRequest<Customer> = Customer.fetchRequest()
//        
//        
//        do {
//          let customers = try context.fetch(fetchRequest)
//          
//            if let lastCust = customers.last{
//                context.delete(lastCust)
//            }
//            
//            try context.save()
//            print("Emploee Deleted")
//            } catch {
//              print("Failed to delete customer")
//            }
//    }
//}
//
//
//
//
