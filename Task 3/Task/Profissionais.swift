//
//  ProfissionaisList.swift
//  Task
//
//  Created by Student on 23/05/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation
class Profissionais{
    let imagem: String
    let nome: String
    var area: String
    let avaliacao: Float
    let idade: String
       let email: String
       let contato: String
       let competencias: String
       let idiomas: String
       let sobreMim: String
    init(nome: String, area: String, avaliacao: Float, imagem: String, idade: String, email: String, contato: String, competencias: String, idiomas: String, sobreMim: String){
        self.nome = nome
        self.area = area
        self.avaliacao = avaliacao
        self.imagem = imagem
        self.idade = idade
        self.email = email
        self.contato = contato
        self.competencias = competencias
        self.idiomas = idiomas
        self.sobreMim = sobreMim
    }
    class ProfissionaisProgramacaoDAO{
    static func getList() -> [Profissionais]{
        return [
             Profissionais(nome: "Edilson Almeida", area: "Programação", avaliacao: 4.7, imagem: "edilson", idade: "25 anos.", email: "edilsonalmeida@gmail.com", contato: "(11) 992039184", competencias: "HTML5, CSS, JavaScript, Java, C#, MySQL, SQL, PHP.", idiomas: "Português e Inglês", sobreMim: "Sou formado pela PUC CAMPINAS em análise e desenvolvimento de sistemas. Tenho experiência na área de TI principalmente em Analise de Software. Trabalho na área faz 7 anos."),
            Profissionais(nome: "Fabricio Araujo", area: "Programacao", avaliacao: 5.0, imagem: "fabricio", idade: "42 anos.", email: "ricardo_tagami@hotmail.com", contato: "(44) 99", competencias: "Python, PHP, Ruby, GO e C++.", idiomas: "PT", sobreMim: "Sou formado em Engenharia de Software, além de ter me formado como orador da turma e possuir muito conhecimento da área de TI. Adoraria repassar meu conhecimento para quem realmente tem vontade de aprender!"),
            Profissionais(nome: "Claudio da Silva", area: "Programacao", avaliacao: 5.0, imagem: "foto3", idade: "44 anos.", email: "claudiosilva@outlook.com", contato: "(44) 991662545", competencias: "JavasScript, HTML, Swift, Linguagem C e C#.", idiomas: "Português, Inglês e Latim.", sobreMim: "Formado em Ciencias da Computação pela USP. Tenho experiência em desenvolvimento web FullStack, trabalhei cerca de 12 anos na área, e estou aqui para auxiliar quem deseja aprender")
        ]
    }
       
}
    class ProfissionaisFinancasDAO{
        static func getList() -> [Profissionais]{
        return [
                       Profissionais(nome: "João Antônio", area: "Financas", avaliacao: 4.7, imagem: "foto1", idade: "27 anos.", email: "joao.rollo17@gmail.com", contato: "44909094090", competencias: "Git, Python, SQL e C++.", idiomas: "Português e Inglês.", sobreMim: " Atuo na área de Finanças a 4 anos no mercado de trabalho e estou aqui para ajudar o pessoal que está com dificuldade."),
                       Profissionais(nome: "Ricardo Francisco", area: "Financas", avaliacao: 5.0, imagem: "foto2", idade: "34", email: "email@financas.com", contato: "44909084090", competencias: "NADA", idiomas: "PT", sobreMim: "Sou formado pela UNICAMP em economia e no momento estou atuando na área de finanças. Tive experiência no mercado de trabalho (trabalhei cerca de 5 anos na área)."),
                       Profissionais(nome: "Nathan Lisandro", area: "Financas", avaliacao: 5.0, imagem: "foto3", idade: "44", email: "email@financas.com", contato: "44934084090", competencias: "NADA", idiomas: "PT", sobreMim: "Sou formado pela Unicesumar em economia, desenvolvi diversos projetos de pesquisa ciëntifica. Trabalhei na área por 12 anos da minha vida. Estou aqui pra ajudar realmente quem tem sede de aprender.")
                   ]
    }
    }

}

