//
//  AddVC.swift
//  yofavmovies
//
//  Created by Bruce Burgess on 4/2/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import UIKit
import CoreData

class AddVC: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var cancelButton: Button!
    @IBOutlet weak var saveButton: Button!
    @IBOutlet weak var movieImg: MovieImageView!
    @IBOutlet weak var addImgBtn: UIButton!
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descrTextField: UITextField!
    @IBOutlet weak var plotTextField: UITextField!
    @IBOutlet weak var urlTextField: UITextField!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        cancelButton.roundButtonCorners()
        saveButton.roundButtonCorners()
        movieImg.roundImageCorners()
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        movieImg.image = image
        addImgBtn.titleLabel?.text = ""
    }

    @IBAction func addImgBtnTapped(sender: AnyObject) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func saveBtnTapped(sender: Button) {
        
        saveDataToFile()
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func cancelTapped(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
        print("cancel!!")
    }
    
    func saveDataToFile() {
        
        if let movieTitle = titleTextField.text where movieTitle != "" {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            
            movie.title = movieTitle
            movie.descr = descrTextField.text
            movie.plot = plotTextField.text
            movie.url = urlTextField.text
            
            print("Movie Title: \(movie.title)\n Movie Desc: \(movie.descr)\n Movie Plot: \(movie.plot)\n Movie URL: \(movie.url)")
            
            if let img = movieImg.image {
                movie.setMovieImage(img)
            }
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Could not save movie!!!")
            }
            
            print("save function finished!!")
            
        }
    }
}


























