//
//  CoreDataHandler.swift
//  Assignment4
//
//  Created by Riccardo Moncada on 2023-11-27.
//
//  Student ID: 129698213
//  Title: Assignment 4
//  Date: Thursday November 28, 2023
//  Course: MAP253 NSA
//  Instructor: Rohit Gaur

import Foundation
import UIKit
import CoreData

class CoreDataHandler {
    static let shared = CoreDataHandler()
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var context: NSManagedObjectContext?
    
    private init(){
        context = appDelegate.persistentContainer.viewContext
    }
    
    func saveContext(){
        appDelegate.saveContext() 
    }
    
    func insert(name: String,
             username: String,
             email: String,
             street: String,
             suite: String,
             city: String,
             zipcode: String,
             lat: String,
             lng: String,
             phone: String,
             website: String,
             companyName: String,
             companyCatchPhrase: String,
             companyBs: String,
             processStatus: String,
             completion: @escaping ()-> Void){
        
        // 1. Create Customer Oject
        let cust = Customer(context: context!)
        
        // 2. Set the properties of that object
        cust.name = name
        cust.username = username
        cust.email = email
        cust.street = street
        cust.suite = suite
        cust.city = city
        cust.zipcode = zipcode
        cust.lat = lat
        cust.lng = lng
        cust.phone = phone
        cust.website = website
        cust.companyName = companyName
        cust.companyCatchPhrase = companyCatchPhrase
        cust.companyBs = companyBs
        cust.processStatus = processStatus
        
        // 3. Use the context variable to save the customer to the database table
        
        saveContext()
        completion()
    }
    
    func update(customer: Customer,
            name: String,
            username: String,
            email: String,
            street: String,
            suite: String,
            city: String,
            zipcode: String,
            lat: String,
            lng: String,
            phone: String,
            website: String,
            companyName: String,
            companyCatchPhrase: String,
            companyBs: String,
            processStatus: String,
            completion: @escaping ()-> Void){
        
        customer.name = name
        customer.username = username
        customer.email = email
        customer.street = street
        customer.suite = suite
        customer.city = city
        customer.zipcode = zipcode
        customer.lat = lat
        customer.lng = lng
        customer.phone = phone
        customer.website = website
        customer.companyName = companyName
        customer.companyCatchPhrase = companyCatchPhrase
        customer.companyBs = companyBs
        customer.processStatus = processStatus
        
        saveContext()
        completion()
    }
    
    func update(customer: Customer,
                phone: String,
                processStatus: String,
                completion: @escaping ()-> Void){

        customer.processStatus = processStatus
        customer.phone = phone
        
        saveContext()
        completion()
    }
    
    /// Returns an array of Customers (Core Data obj)
      func fetchData() -> Array<Customer> {
        let fetchRequest: NSFetchRequest<Customer> = Customer.fetchRequest()
        do {
          let cust = try context?.fetch(fetchRequest)
          return cust!
        } catch {
          print(error.localizedDescription)
          // Returning an empty Array - Error Handling
          let cust = Array<Customer>()
          return cust
        }
      }
    
    func deleteData(for customer: Customer, completion: @escaping () -> Void) {
        
        context!.delete(customer)
        saveContext()
        completion()
      }
}
