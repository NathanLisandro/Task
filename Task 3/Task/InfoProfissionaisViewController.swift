//
//  InfoProfissionaisViewController.swift
//  Task
//
//  Created by Student on 24/05/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class InfoProfissionaisViewController: UIViewController {

    
    var puxaTexto: Profissionais?
    
    @IBOutlet weak var sobremim: UITextView!
    
    
    @IBOutlet weak var nome: UITextField!
    
    @IBOutlet weak var idade: UITextField!
    
    
    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var email: UITextField!
    
    
    @IBOutlet weak var contato: UITextField!
    
    @IBOutlet weak var competencias: UITextView!
    
    @IBOutlet weak var idiomas: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sobremim.text = puxaTexto?.sobreMim
        nome.text = puxaTexto?.nome
        idade.text = puxaTexto?.idade
        email.text = puxaTexto?.email
        contato.text = puxaTexto?.contato
        competencias.text = puxaTexto?.competencias
        idiomas.text = puxaTexto?.idiomas
        imagem.image = UIImage(named: puxaTexto!.imagem)
        //imagem.image = UIImage(named: ("foto3"))

    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
