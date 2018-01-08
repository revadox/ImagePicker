//
//  ViewController.swift
//  ImagePicker
//
//  Created by darshan on 08/01/18.
//  Copyright © 2018 darshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    
    
    @IBOutlet var imageView: UIImageView!
    
    
    @IBAction func selectImage(_ sender: UIButton) {
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        
    //creat alert
    let alert = UIAlertController(title:"Choose Image",message:"selet Option ",preferredStyle:UIAlertControllerStyle.alert)
            
        
        // when you have to handle something when tap button
        alert.addAction(UIAlertAction(title: "camera", style: UIAlertActionStyle.default, handler: { action in
            
            imagePickerController.sourceType = .camera
            self.present(imagePickerController, animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "photo Library", style: UIAlertActionStyle.default, handler: { action in
            imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true, completion: nil)
        }))
        
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
            
            
            //show the alert
            present(alert, animated: true, completion: nil)
        
        }
   //need two function for imagepickerdelegate and didcancle
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageView.image = image
        picker.dismiss(animated: true  , completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
          picker.dismiss(animated: true  , completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

