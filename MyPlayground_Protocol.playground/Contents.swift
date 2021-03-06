//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str)

@objc protocol UFCFighter {
    
    var nom: String { get }
    var surNom: String? { get set }

    func puch()
    func kick()
    func grapple()
    
    @objc optional func trashedtalked()
}

//----------------------------

class CreateUFCFighter :  UFCFighter {
   
    
    var nom: String
    var surNom: String?
    
    init(nom: String) {
        self.nom = nom
    }
    
    func grapple() {
        //
    }
    
    func kick() {
        //
    }
    
    func puch() {
        //
    }

    func trashedtalked() {
        //
    }
}

let gsp = CreateUFCFighter(nom: "Rory Gracie")

//gsp.surNom = "the snake"


//print(gsp.surNom!)


//let str: String = gsp.surNom!

if let str = gsp.surNom {
    
    print(str)
}

//==================================================


class Animal {
    
    func makeSound() {
        
        fatalError("Implemente-moi")
    }
}

class Dog : Animal {
    
    override func makeSound() {
        print("wof wof")
    }
    
}


let chien = Dog()
chien.makeSound()


let chat = Dog()
chat.makeSound()

//===============================


protocol Sound {
    
    
    func makeSound()
}


class aDog: Sound {
    
    func makeSound() {
        print("wof")
    }
}


let unChien = aDog()

unChien.makeSound()

class iPhone: Sound {
    
    func makeSound() {
        print("ring")
    }
}


let iphone = iPhone()

iphone.makeSound()

//=========================

protocol Bird {
    
    var name: String { get }
    var canFly: Bool { get }
    
}

protocol FlyingSpeed {
    
    var speedVelocity: Double { get }
}

struct Penguin: Bird {
    
    let name: String
    let canFly = false
}


let peng = Penguin(name: "Penguin")

peng.name

peng.canFly


struct Eagle: Bird, FlyingSpeed {
    
    
    let canFly = true
   
    var speedVelocity: Double { return speed * 2}
   
    let name: String

    let comment: String
    
    let speed: Double
    
}

let eagle = Eagle(name: "the Eagles", comment: "Eagles are fast", speed: 100.0)

eagle.canFly
eagle.comment
eagle.name
eagle.speed
eagle.speedVelocity





































