//
//  HomeViewController.swift
//  TripPlanner
//
//  Created by vanya rohatgi on 7/24/17.
//  Copyright © 2017 Vanya Rohatgi. All rights reserved.
//

import Foundation
import UIKit
import GooglePlaces
import GoogleMaps

class HomeViewController: UIViewController {

    // MARK: - Subviews
    
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var beachesButton: UIButton!
    @IBOutlet weak var trailsButton: UIButton!
    @IBOutlet weak var poolsButton: UIButton!
    @IBOutlet weak var campgroundsButton: UIButton!
    @IBOutlet weak var parksButton: UIButton!
    @IBOutlet weak var lakesButton: UIButton!
    @IBOutlet weak var locationButton: UIButton!
    
    // MARK: - IBActions
    
    @IBAction func lakesButtonTapped(_ sender: UIButton) {
    }
    @IBAction func parksButtonTapped(_ sender: UIButton) {
    }

    @IBAction func campgroundsButtonTapped(_ sender: UIButton) {
    }
    @IBAction func beachesButtonTapped(_ sender: UIButton) {
    }
    @IBAction func trailsButtonTapped(_ sender: UIButton) {
    }
    @IBAction func poolsButtonTapped(_ sender: UIButton) {
    }
    @IBAction func locationButtonTapped(_ sender: UIButton) {
    }
    @IBAction func autocompleteClicked(_ sender: UITextField) {
        
    // Present the Autocomplete view controller when the button is pressed.
    let autocompleteController = GMSAutocompleteViewController()
    autocompleteController.delegate = self
    present(autocompleteController, animated: true, completion: nil)
            
        }

    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let identifier = segue.identifier {
//            if identifier == "pools" {
//                print("pools button tapped")
//            }
//        }
//        if let identifier = segue.identifier {
//            if identifier == "beaches" {
//                print("beaches button tapped")
//            }
//        }
//        if let identifier = segue.identifier {
//            if identifier == "trails" {
//                print("trails button tapped")
//            }
//        }
//        if let identifier = segue.identifier {
//            if identifier == "campgrounds" {
//                print("campgrounds button tapped")
//            }
//        }
//        if let identifier = segue.identifier {
//            if identifier == "lakes" {
//                print("lakes button tapped")
//            }
//        }
//        if let identifier = segue.identifier {
//            if identifier == "parks" {
//                print("parks button tapped")
//            }
//        }
//    }

extension HomeViewController: GMSAutocompleteViewControllerDelegate {
    
    // Handle the user's selection.
    func viewController(_ viewController: GMSAutocompleteViewController, didAutocompleteWith place: GMSPlace) {
        print("Place name: \(place.name)")
        print("Place address: \(place.formattedAddress)")
        print("Place attributions: \(place.attributions)")
        dismiss(animated: true, completion: nil)
    }
    
    func viewController(_ viewController: GMSAutocompleteViewController, didFailAutocompleteWithError error: Error) {
        // TODO: handle the error.
        print("Error: ", error.localizedDescription)
    }
    
    // User canceled the operation.
    func wasCancelled(_ viewController: GMSAutocompleteViewController) {
        dismiss(animated: true, completion: nil)
    }
    
    // Turn the network activity indicator on and off again.
    func didRequestAutocompletePredictions(_ viewController: GMSAutocompleteViewController) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func didUpdateAutocompletePredictions(_ viewController: GMSAutocompleteViewController) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
}
