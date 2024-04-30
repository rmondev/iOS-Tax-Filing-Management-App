//
//  Customer+CoreDataProperties.swift
//  Assignment4
//
//  Created by Riccardo Moncada on 2023-11-27.
//
//

import Foundation
import CoreData


extension Customer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Customer> {
        return NSFetchRequest<Customer>(entityName: "Customer")
    }

    @NSManaged public var name: String?
    @NSManaged public var username: String?
    @NSManaged public var email: String?
    @NSManaged public var street: String?
    @NSManaged public var suite: String?
    @NSManaged public var city: String?
    @NSManaged public var zipcode: String?
    @NSManaged public var lat: String?
    @NSManaged public var lng: String?
    @NSManaged public var phone: String?
    @NSManaged public var website: String?
    @NSManaged public var companyName: String?
    @NSManaged public var companyCatchPhrase: String?
    @NSManaged public var companyBs: String?
    @NSManaged public var processStatus: String?

}

extension Customer : Identifiable {

}
