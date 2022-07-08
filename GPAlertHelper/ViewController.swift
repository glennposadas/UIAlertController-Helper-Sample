//
//  ViewController.swift
//  GPAlertHelper
//
//  Created by Glenn Posadas on 7/8/22.
//

import UIKit

class ViewController: UIViewController {

    func printUserAction() -> AlertCallBack? {
        return { didTapPrimary in
            print("didTapPrimary: \(didTapPrimary)")
        }
    }
    
    @IBAction func defaultConvenientAlert(_ sender: Any) {
        alert(title: "Error! Please try again",
              primaryButton: "OK",
              withBlock: printUserAction())
    }
    
    // MARK: - Primary
    
    // Primary As Destructive | Secondary As Cancel
    @IBAction func primaryAsDestructive(_ sender: UIButton) {
        alert(title: sender.titleLabel!.text!,
              message: "Are you sure you want to delete this item?",
              primaryButtonTitle: "Primary",
              primaryButtonStyle: .destructive,
              secondaryButtonTitle: "Secondary",
              secondaryButtonStyle: .cancel,
              tintColor: .black,
              withBlock: printUserAction())
    }
    
    // Primary As Destructive | Secondary As Default
    @IBAction func primaryAsDestructiveSecondaryAsDefault(_ sender: UIButton) {
        alert(title: sender.titleLabel!.text!,
              message: "Are you sure you want to delete this item?",
              primaryButtonTitle: "Primary",
              primaryButtonStyle: .destructive,
              secondaryButtonTitle: "Secondary",
              secondaryButtonStyle: .default,
              tintColor: .black,
              withBlock: printUserAction())
    }
    
    // Primary As Cancel | Secondary As Default
    @IBAction func primaryAsCancel(_ sender: UIButton) {
        alert(title: sender.titleLabel!.text!,
              message: "Are you sure you want to delete this item?",
              primaryButtonTitle: "Primary",
              primaryButtonStyle: .cancel,
              secondaryButtonTitle: "Secondary",
              secondaryButtonStyle: .default,
              tintColor: .black,
              withBlock: printUserAction())
    }
    
    // MARK: - Secondary
    
    // Secondary As DESTRUCTIVE | Primary As Cancel
    @IBAction func secondaryAsDestructive(_ sender: UIButton) {
        alert(title: sender.titleLabel!.text!,
              message: "Are you sure you want to delete this item?",
              primaryButtonTitle: "Primary",
              primaryButtonStyle: .cancel,
              secondaryButtonTitle: "Secondary",
              secondaryButtonStyle: .destructive,
              tintColor: .black,
              withBlock: printUserAction())
    }
    
    // Secondary As DESTRUCTIVE | Primary As Default
    @IBAction func secondaryAsDestructivePrimaryAsDefault(_ sender: UIButton) {
        alert(title: sender.titleLabel!.text!,
              message: "Are you sure you want to delete this item?",
              primaryButtonTitle: "Primary",
              primaryButtonStyle: .default,
              secondaryButtonTitle: "Secondary",
              secondaryButtonStyle: .destructive,
              tintColor: .black,
              withBlock: printUserAction())
    }
    
    // Secondary As Cancel | Primary As Default
    @IBAction func secondaryAsCancelPrimaryAsDefault(_ sender: UIButton) {
        alert(title: sender.titleLabel!.text!,
              message: "Are you sure you want to delete this item?",
              primaryButtonTitle: "Primary",
              primaryButtonStyle: .default,
              secondaryButtonTitle: "Secondary",
              secondaryButtonStyle: .cancel,
              tintColor: .black,
              withBlock: printUserAction())
    }
}
