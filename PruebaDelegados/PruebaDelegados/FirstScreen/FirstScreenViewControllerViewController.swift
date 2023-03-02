//
//  FirstScreenViewControllerViewController.swift
//  PruebaDelegados
//
//  Created by Francisco Javier Casais Fedriani on 23/2/23.
//

import UIKit

class FirstScreenViewControllerViewController: UIViewController {
    //MARK: - Outlet
    @IBOutlet weak var AddTextBtn: UIButton!
    @IBOutlet weak var textLb: UILabel!
    
    //MARK: - Action Outlet
    @IBAction func MoveScreen(_ sender: Any) {
        //let vc = SecondScreenViewController()
        vc.delegate = self
        navigationController?.present(vc, animated: true)
    }
    
    //MARK: - Cicle live
    override func viewDidLoad() {
        super.viewDidLoad()
        StyleOutlet()
    }
    
    let vc = SecondScreenViewController()
    
    //MARK: - Function
    func StyleOutlet() {
        AddTextBtn.tintColor = .red

        textLb.text = "Hola mundo"
        textLb.textAlignment = .center
    }
    
    
}

extension FirstScreenViewControllerViewController: SecondScreenProtocol {
    func didSelectString(_ texto: String) {
        textLb.text = texto
    }
}
