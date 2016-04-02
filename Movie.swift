//
//  Movie.swift
//  yofavmovies
//
//  Created by Bruce Burgess on 4/2/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Movie: NSManagedObject {


    func setMovieImage(img: UIImage){
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getMovieImage() -> UIImage  {
        if let img = UIImage(data: self.image!) {
            return img
        } else {
            return UIImage()
        }
    }

}
