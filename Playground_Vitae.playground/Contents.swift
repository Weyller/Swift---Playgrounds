//: Playground - noun: a place where people can play

import UIKit


//let birth: Date = Calendar.current.date(from: DateComponents(year: 1968, month: 09, day: 11))!
//let age: Int = Calendar.current.dateComponents([.year], from: birth, to: Date()).year!

//=======================

extension Date {
    
    var age : Int {
        
        return Calendar.current.dateComponents([.year], from: self, to: Date()).year!
           }
    
    }

//birth.age

//=======================

class Person {
    
    var firtname: String
    var lastName: String
    var age: Int
    
    init(firtname fn: String  ,
         lastName ln: String ,
         year yr: Int,
         month mt: Int,
         day da: Int
         ) {
        firtname = fn
        lastName = ln
        
        let dateOfBirth = Calendar.current.date(from: DateComponents(year: yr, month: mt, day: da))!
        
        age = dateOfBirth.age
    }
    
}

//---------------------------------

class Information: Person {
    
    
    var address: String
    var phoneNum: String
    
    
    init(address adr: String,
         phoneNum ph: String,
         firtname fn: String  ,
         lastName ln: String ,
         year yr: Int,
         month mt: Int,
         day da: Int) {
        
        address = adr
        phoneNum = ph
        
        
        super.init(firtname: fn, lastName: ln, year: yr, month: mt, day: da)
    }
    
}
//=======================================

class Curriculum: Information {
    
    var presentation: String
    var skills: String
    
    init(presentation pr: String,
         skills sk: String,
         address adr: String,
         phoneNum ph: String,
         firtname fn: String  ,
         lastName ln: String ,
         year yr: Int,
         month mt: Int,
         day da: Int) {
        
        presentation = pr
        skills = sk
        
        super.init(address: adr, phoneNum: ph, firtname: fn, lastName: ln, year: yr, month: mt, day: da)
    }
    
}

//--------------

var cvWeyller: Curriculum


cvWeyller = Curriculum(presentation:"Bonjour, je m'appelle Weyller et je suis devellopeur mobile junior",
                       skills: "swift,android,java,web,mobile",
                       address: "157 av Dorval ",
                       phoneNum: "514-555-5555",
                       firtname: "Weyller",
                       lastName: "Desir",
                       year: 1969, month: 02, day: 09)




let birth: Date = Calendar.current.date(from: DateComponents(year: 1968, month: 09, day: 11))!
let age: Int = Calendar.current.dateComponents([.day], from: birth, to: Date()).day!

//=======================









extension Date {
    
    var days : Int {
        
        return Calendar.current.dateComponents([.day], from: self, to: Date()).day!
    }
    
}

birth.days


























