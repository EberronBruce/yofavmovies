//
//  MovieImageView.swift
//  yofavmovies
//
//  Created by Bruce Burgess on 4/2/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import UIKit

class MovieImageView: UIImageView {

    func roundImageCorners() {
        self.layer.cornerRadius = 6.0
        self.clipsToBounds = true
        self.contentMode = .ScaleAspectFill
    }

}
