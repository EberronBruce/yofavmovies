//
//  MovieCell.swift
//  yofavmovies
//
//  Created by Bruce Burgess on 4/2/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var movieImg: MovieImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDesc: UILabel!
    @IBOutlet weak var movieLink: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        movieImg.roundImageCorners()
        
        
        
    }

    func configureCell(movie: Movie) {
        movieTitle.text = movie.title
        movieDesc.text = movie.descr
        movieLink.text = movie.url
        movieImg.image = movie.getMovieImage()
    }
    
    

}
