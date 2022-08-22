//
//  ProfissionaisInfo.swift
//  Task
//
//  Created by Student on 24/05/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation
class ProfissionaisInformacao{
    let sobreMim: String
    let nome: String
    let idade: String
    let email: String
    let contato: String
    let competencias: String
    let idiomas: String
    init(sobreMim: String, nome: String, idade: String, email: String, contato: String, competencias: String, idiomas: String){
    self.nome = nome
    self.idade = idade
    self.email = email
    self.contato = contato
    self.competencias = competencias
    self.idiomas = idiomas
        self.sobreMim = sobreMim
    
}
    
    class ProfissionaisProgramacaoDAO{
        static func getInfo() -> [ProfissionaisInformacao]{
            return [
                ProfissionaisInformacao(sobreMim:"Olà teste" ,nome: "Nathan", idade: "17", email: "email@email.com", contato: "9999999999", competencias: "NADA", idiomas: "PT")
            ]
        }
        
    }
}
