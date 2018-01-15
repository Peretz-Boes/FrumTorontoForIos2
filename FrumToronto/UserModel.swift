//
//  UserModel.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2018-01-10.
//  Copyright © 2018 Alan Rabinowitz. All rights reserved.
//

import Foundation

class UserModel{
    var id:String?
    var username:String?
    var address:String?
    var phoneNumber:String?
    
    init(id:String?,username:String?,address:String?,phoneNumber:String?) {
        self.id=id
        self.username=username
        self.address=address
        self.phoneNumber=phoneNumber
    }
    
}
