//
//  ViewController.swift
//  project
//
//  Created by Daniel Washington Ignacio on 05/07/21.
//

import UIKit

enum Section: Int {
    case cars = 0
    case moto = 1
}


class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var arrayCars:[String] = ["Lancer","Punto","Gol","Gol G4", "Ferrari"]
    
    var arrayMoto:[String] = ["Ducati Senna", "CBR" , "R1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        // Do any additional setup after loading the view.
    }


}

// MARK: -UITableViewDelegate, UITableViewDataSource

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case Section.cars.rawValue:
            return self.arrayCars.count
        case Section.moto.rawValue:
            return self.arrayMoto.count
        default:
           return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case Section.cars.rawValue:
            return "Carros"
        case Section.moto.rawValue:
            return "Motos"
        default:
           return ""
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        if indexPath.section == Section.cars.rawValue {
            cell.textLabel?.text = self.arrayCars[indexPath.row]
        }else{
            cell.textLabel?.text = self.arrayMoto[indexPath.row]
        }
            
        
        //cell.detailTextLabel?.text = "Daniel"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("oi")
    }
    
}
