//
//  LanguageViewController.swift
//  CreateConfiguration-Development
//
//  Created by Tao Quynh on 3/6/23.
//

import UIKit

class LanguageViewController: UIViewController {
    
    @IBOutlet weak var langPicker: UIPickerView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var languages: [String] = []
    var lang: String = "en"
    var locale: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 16, *) {
            locale = "\(Locale.current.language)"
        } else {
            locale = Locale.current.languageCode
        }
        print(locale)
        languages = ["text.english", "text.vietnamese"]
        langPicker.delegate = self
        
        descriptionTextView.text = ""
        descriptionTextView.isEditable = false
        
        changeLanguage(lang: "en")
    }
    
    func changeLanguage(lang: String) {
        textLabel.text = "text.title".localizeString(string: lang)
        titleLabel.text = "text.topic".localizeString(string: lang)
        descriptionTextView.text = "text.paragraph".localizeString(string: lang)
        self.lang = lang
        langPicker.reloadAllComponents()
    }
}

extension LanguageViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return languages.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return languages[row].localizeString(string: lang)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if languages[row] == "text.vietnamese" {
            changeLanguage(lang: "vi")
        } else {
            changeLanguage(lang: "en")
        }
        
    }
}
