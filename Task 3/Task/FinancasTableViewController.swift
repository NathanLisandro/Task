//
//  AnimalTableViewController.swift
//  AulaTableViewUnicesumarTARDE
//
//  Created by Student on 05/05/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class FinancasTableViewController: UITableViewController {
    

     var profissionaisFinanca = [Profissionais]()

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        profissionaisFinanca = Profissionais.ProfissionaisFinancasDAO.getList();



        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return profissionaisFinanca.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profissionaisCell", for: indexPath)
        if let profissionaisCell = cell as? ProfissionaisTableViewCell{
            
            let profissional = profissionaisFinanca[indexPath.row]
            profissionaisCell.nomeProgramacaoLabel.text = profissional.nome
            profissionaisCell.areaProgramacaoLabel.text = profissional.area
            profissionaisCell.imagemProgramacaoProfissinais.image = UIImage(named: profissional.imagem)
            profissionaisCell.avaliacaoProgramacaoLabel.text = String(profissional.avaliacao)
            
            
            return profissionaisCell
            
        }
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "exibirInfoFinancas"{
        
            if let profissionalView = segue.destination as? InfoProfissionaisViewController {
            
               let celulaSelecionada = tableView.indexPathForSelectedRow?.row
                let profissionalCelula = profissionaisFinanca[celulaSelecionada!]
                
                profissionalView.puxaTexto = profissionalCelula
            }
        }
    
    }

}
