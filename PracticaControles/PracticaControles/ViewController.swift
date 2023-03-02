//
//  ViewController.swift
//  PracticaControles
//
//  Created by Francisco Javier Casais Fedriani on 28/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlet
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myPicker: UIPickerView!
    @IBOutlet weak var myPageControl: UIPageControl!
    @IBOutlet weak var mySegmenteControl: UISegmentedControl!
    @IBOutlet weak var mySlider: UISlider!
    
    //MARK: - Variable
    private let myData = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"]
    
    //MARK: - Action
    @IBAction func myButtonAction(_ sender: Any) {
        
        if myButton.backgroundColor == .blue {
            myButton.backgroundColor = .green
        } else {
            myButton.backgroundColor = .blue
        }
    }
    
    @IBAction func myPageControlAction(_ sender: Any) {
        myPicker.selectRow(myPageControl.currentPage , inComponent: 0, animated: true)
        
        let myString = myData[myPageControl.currentPage]
        myButton.setTitle(myString, for: .normal)
        mySegmenteControl.selectedSegmentIndex = myPageControl.currentPage
        mySlider.value = Float(myPageControl.currentPage + 1)
        
    }
    
    @IBAction func mySegmentControlAction(_ sender: Any) {
        let myString = myData[mySegmenteControl.selectedSegmentIndex]
        myButton.setTitle(myString, for: .normal)
        
        myPicker.selectRow(mySegmenteControl.selectedSegmentIndex, inComponent: 0, animated: true)
        
        myPageControl.currentPage = mySegmenteControl.selectedSegmentIndex
        
        mySlider.value = Float(mySegmenteControl.selectedSegmentIndex + 1)
    }
    
    @IBAction func mySliderAction(_ sender: Any) {
        let myString = myData[Int(mySlider.value) - 1]
        myButton.setTitle(myString, for: .normal)
        
        switch mySlider.value {
        case 1..<2:
            mySegmenteControl.selectedSegmentIndex = 0
        case 2..<3:
            mySegmenteControl.selectedSegmentIndex = 1
        case 3..<4:
            mySegmenteControl.selectedSegmentIndex = 2
        case 4..<5:
            mySegmenteControl.selectedSegmentIndex = 3
        default:
            mySegmenteControl.selectedSegmentIndex = 4
        }
        
        myPicker.selectRow(Int(mySlider.value - 1), inComponent: 0, animated: true)
        
        myPageControl.currentPage = Int(mySlider.value - 1)
    }
    //MARK: - CicleLive
    override func viewDidLoad() {
        super.viewDidLoad()
        loadStyle()
    }
    
    //MARK: - Function
    
    func loadStyle() {
        /// Button
        myButton.setTitle("Mi boton", for: .normal)
        myButton.backgroundColor = .blue
        myButton.setTitleColor(.white, for: .normal)
        
        ///Picker
        myPicker.backgroundColor = .lightGray
        myPicker.delegate = self
        myPicker.dataSource = self
        
        ///PageControl
        myPageControl.numberOfPages = myData.count
        myPageControl.currentPageIndicatorTintColor = .blue
        myPageControl.pageIndicatorTintColor = .lightGray
        
        ///Segmente Control
        mySegmenteControl.removeAllSegments()
        for (index, value) in myData.enumerated() {
            mySegmenteControl.insertSegment(withTitle: value, at: index, animated:  true)
        }
        
        ///Slider
        mySlider.minimumTrackTintColor = .red
        mySlider.maximumValue = Float(myData.count)
        mySlider.minimumValue = 1
        mySlider.value = 1

         
    }
}
/**
 Data source --> Las funciones sirven para cargar datos en la vista
 Delegado  --> Las funciones sirven para interacturar con nuestro viewController
 */
extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let myString = myData[row]
        myButton.setTitle(myString, for: .normal)
        myPageControl.currentPage = row
        mySegmenteControl.selectedSegmentIndex = row
        mySlider.value = Float(row + 1)
    }
    
}

