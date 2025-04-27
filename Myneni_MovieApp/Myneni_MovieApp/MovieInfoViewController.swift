//
//  MovieInfoViewController.swift
//  Myneni_MovieApp
//
//  Created by siddharth sai on 4/23/25.
//

import UIKit

class MovieInfoViewController: UIViewController {
    
    
    @IBOutlet weak var movieImageViewOutlet: UIImageView!
    
    @IBOutlet weak var movieInfoOutlet: UITextView!
    
    
    var movie: MovieList?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = movie?.movieName

        if let imageName = movie?.movieImage {
            movieImageViewOutlet.image = UIImage(named: imageName)
            movieImageViewOutlet.alpha = 0.0
            UIView.animate(withDuration: 1.0) {
                self.movieImageViewOutlet.alpha = 1.0
            }
        }
        movieInfoOutlet.isHidden = true
    }

    @IBAction func showInfoAction(_ sender: Any) {
        movieInfoOutlet.text = movie?.movieInfo
        movieInfoOutlet.isHidden = false
        
    }
    
    
}
