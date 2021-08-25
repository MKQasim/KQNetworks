//
//  LoginUserModel.swift
//  KQHamaraSchool
//
//  Created by baber on 26/12/2020.
//

import Foundation
//
//class LoginUserModel{
//
//
////    func firebase.auth().signInWithEmailAndPassword(email, password)
////      .then(function(result) {
////        // result.user.tenantId should be ‘TENANT_PROJECT_ID’.
////      }).catch(function(error) {
////        // Handle error.
////      });
//
//}


class LoginModel : Response{
    var code        :   Int = 0
    var message     :   String?
    var result      :   [String:ServerUser]?
}

struct ServerUser:Codable {
    var id: Int?
    var firstname   : String?
    var lastname    : String?
    var token       : String?
    var email       : String?
    var gender      : String?
    var dateOfBirth : String?
}

struct User:Codable {
    var userId: Int?
    var id: Int?
    var firstname   : String?
    var lastname    : String?
    var token       : String?
    var email       : String?
    var gender      : String?
    var dateOfBirth : String?
    var completed   :Bool?

    init(serverUser:ServerUser,completed:Bool?){
        self.id          = serverUser.id
        self.userId      = serverUser.id
        self.firstname   = serverUser.firstname
        self.lastname    = serverUser.lastname
        self.token       = serverUser.token
        self.email       = serverUser.email
        self.gender      = serverUser.gender
        self.dateOfBirth = serverUser.dateOfBirth
        self.completed   = completed
    }
}

class Greeting
{
  // NOTE: Before refactoring, we use the if-else implementation

  func generate(firstName: String?, lastName: String?) -> String?
  {
    if let firstName = firstName, let lastName = lastName {
      return "Good to see you, Mr. \(firstName) \(lastName)."
    }

    if let firstName = firstName {
      return "Hi \(firstName)."
    }

    if let lastName = lastName {
      return "Hello, Mr. \(lastName)."
    }

    return nil
  }
}
