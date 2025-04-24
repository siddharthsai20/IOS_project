//
//  MovieCollectionViewCell.swift
//  MoviesCollectionapp
//
//  Created by siddharth sai on 4/10/25.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func assignMovie(movie: Movie) {
        imageView.image = movie.image
    }
}
    

    

