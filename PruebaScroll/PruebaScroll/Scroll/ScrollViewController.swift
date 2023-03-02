//
//  ScrollViewController.swift
//  PruebaScroll
//
//  Created by Francisco Javier Casais Fedriani on 2/3/23.
//

import UIKit

class ScrollViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var ChangeScreenBtn: UIButton!
    
    //MARK: - Variables
    
    //MARK: - Actions
    @IBAction func ActionChangeScreenBtn(_ sender: Any) {
        let vc = SecondScrollViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
    }
    
    //MARK: - CicleLive
    override func viewDidLoad() {
        super.viewDidLoad()
        loadStyle()
    }
    
    //MARK: - Function
    
    func loadStyle() {
        ChangeScreenBtn.backgroundColor = .white
        ChangeScreenBtn.setTitle("Cambiar pantalla", for: .normal)
        ChangeScreenBtn.tintColor = .red
    }
}
