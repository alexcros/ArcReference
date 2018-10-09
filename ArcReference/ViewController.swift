//
//  ViewController.swift
//  ArcReference
//
//  Created by Alexandre on 1/10/18.
//  Copyright © 2018 Alexandre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        var john: Persona?
        var unit4A: Apartment?
        john = Persona(name: "John")
        unit4A = Apartment(numero: "4A")
        john!.departamento = unit4A
        unit4A!.arrendatario = john
        john = nil
    }
}
class Persona {
    let name: String
    var departamento: Apartment?
    init(name: String) { self.name = name}
    deinit {
        print("\(name) is being deinitialized")
    }
}
class Apartment {
    let numero: String
    init(numero: String) { self.numero = numero }
    weak var arrendatario: Persona? // reference count 0, has to be weak 
    deinit {
        print("Apartment is being deinitialized")
    }
}
