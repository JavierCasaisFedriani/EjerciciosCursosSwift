//
//  SecondScreenViewController.swift
//  PruebaDelegados
//
//  Created by Francisco Javier Casais Fedriani on 23/2/23.
//

import UIKit

protocol SecondScreenProtocol {
    func didSelectString(_ texto: String)
}

class SecondScreenViewController: UIViewController {
    //MARK: - Outlet
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var AddText: UIButton!
    
    //MARK: - Action Outlet
    @IBAction func AddTextAction(_ sender: Any) {
        guard let textField = textField.text else { return }
        
        if textField != "" {
            delegate.didSelectString(textField)
            dismiss(animated: true)
        }
    }
    
    //MARK: - Cicle live
    override func viewDidLoad() {
        super.viewDidLoad()
        StyleOutlet()
    }
    
    //MARK: - Variables
    var delegate : SecondScreenProtocol!
    
    //MARK: - Function
    func StyleOutlet() {
        AddText.tintColor = .red
        AddText.setTitle("Añadir", for: .normal)
        
        textField.attributedPlaceholder = NSAttributedString(string: NSLocalizedString("Texto", comment: ""),
                                                        attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
    }
}
