//
//  DetailVC.swift
//  yofavmovies
//
//  Created by Bruce Burgess on 4/2/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var movieImage: MovieImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieLike: UILabel!
    @IBOutlet weak var moviePlot: UILabel!
    @IBOutlet weak var movieURL: UILabel!
    @IBOutlet weak var container: UIView!
    
    var movie: Movie?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        container.layer.cornerRadius = 10.0
        container.clipsToBounds = true
        
        movieImage.roundImageCorners()
        
        setUpDisplay()
    }
    
    func setUpDisplay() {
        
        movieImage.image = movie?.getMovieImage()
        movieTitle.text = movie?.title
        movieLike.text = movie?.descr
        moviePlot.text = movie?.plot
        movieURL.text = movie?.url
        
    }

    

}
