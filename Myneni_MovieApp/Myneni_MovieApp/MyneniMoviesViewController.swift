//
//  ViewController.swift
//  Myneni_MovieApp
//
//  Created by siddharth sai on 4/23/25.
//

import UIKit

class MyneniMoviesViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var moviesTableView: UITableView!
    
    var genres: [Movies] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Genres"
        moviesTableView.delegate = self
        moviesTableView.dataSource = self
        loadData()
    }
    func loadData() {
        genres = [
            Movies(genre: "Action", list_Array: [
                MovieList(movieName: "Mission: Impossible – Fallout", movieImage: "missionimpossible", movieInfo: "Ethan Hunt races against time after a mission goes wrong. High-stakes action and breathtaking stunts dominate the adventure."),
                MovieList(movieName: "The Dark Knight", movieImage: "darkknight", movieInfo: "Batman faces the Joker in a chaotic battle for Gotham’s soul. Legendary performances and gripping action scenes fill the story."),
                MovieList(movieName: "Top Gun: Maverick", movieImage: "topgunmaverick", movieInfo: "Ace pilot Maverick returns to train a new generation. Stunning aerial sequences and emotional depth power this sequel."),
                MovieList(movieName: "The Equalizer", movieImage: "equalizer", movieInfo: "A retired agent takes justice into his own hands. Brutal efficiency and heart make this a standout vigilante story."),
                MovieList(movieName: "Extraction", movieImage: "extraction", movieInfo: "A fearless mercenary goes on a deadly rescue mission. Raw action and tight storytelling drive the tension.")
            ]),
            Movies(genre: "Comedy", list_Array: [
                MovieList(movieName: "The Hangover", movieImage: "hangover", movieInfo: "A wild bachelor party night in Las Vegas turns into a desperate search. Hilarious twists and unforgettable chaos follow."),
                MovieList(movieName: "Superbad", movieImage: "superbad", movieInfo: "Two high school friends embark on a mission to enjoy their last party. Awkwardness and laughter dominate their crazy night."),
                MovieList(movieName: "Step Brothers", movieImage: "stepbrothers", movieInfo: "Two grown men become stepbrothers and create chaos under one roof. Ridiculous antics and endless laughs await."),
                MovieList(movieName: "Jumanji: Welcome to the Jungle", movieImage: "jumanji", movieInfo: "Teenagers get sucked into a video game world full of dangers. Quick wit and humor drive their epic adventure."),
                MovieList(movieName: "Deadpool", movieImage: "deadpool", movieInfo: "A mercenary with a twisted sense of humor seeks revenge. Meta jokes and relentless action fuel this hilarious ride.")
            ]),
            
            Movies(genre: "Horror", list_Array: [
                MovieList(movieName: "The Ring", movieImage: "thering", movieInfo: "A cursed videotape leads to mysterious deaths. Atmospheric terror builds slowly until a shocking reveal."),
                MovieList(movieName: "Insidious", movieImage: "insidious", movieInfo: "A family fights dark spirits haunting their child. Jump scares and unsettling imagery create chilling horror."),
                MovieList(movieName: "The Babadook", movieImage: "babadook", movieInfo: "A grieving mother faces a sinister presence in her home. Psychological horror and emotional weight combine powerfully."),
                MovieList(movieName: "Annabelle", movieImage: "annabelle", movieInfo: "An evil doll brings chaos into a young family's life. Creepy visuals and terrifying setups drive the fear."),
                MovieList(movieName: "Sinister", movieImage: "sinister", movieInfo: "A true-crime writer finds disturbing footage linked to a series of murders. Dark discoveries spiral into true terror.")
            ]),
            Movies(genre: "Drama", list_Array: [
                MovieList(movieName: "The Shawshank Redemption", movieImage: "shawshank", movieInfo: "A banker wrongly imprisoned bonds with a fellow inmate. Hope and perseverance triumph over despair."),
                MovieList(movieName: "Forrest Gump", movieImage: "forrestgump", movieInfo: "A kind-hearted man unwittingly influences historic events. Heartwarming storytelling and unforgettable moments abound."),
                MovieList(movieName: "The Pursuit of Happyness", movieImage: "pursuitofhappyness", movieInfo: "A struggling salesman fights for a better life for his son. Grit, resilience, and inspiration drive the narrative."),
                MovieList(movieName: "A Beautiful Mind", movieImage: "abeautifulmind", movieInfo: "A brilliant mathematician battles schizophrenia. Genius, love, and redemption weave through this moving story."),
                MovieList(movieName: "Good Will Hunting", movieImage: "goodwillhunting", movieInfo: "A troubled genius unlocks his potential with the help of a therapist. Emotionally rich and powerfully acted.")
            ]),

            Movies(genre: "Sci-Fi", list_Array: [
                MovieList(movieName: "Edge of Tomorrow", movieImage: "edgeoftomorrow", movieInfo: "A soldier relives a deadly battle against aliens in a time loop. Clever storytelling and nonstop action dominate."),
                MovieList(movieName: "Oblivion", movieImage: "oblivion", movieInfo: "In a post-apocalyptic Earth, a technician questions everything he knows. Mystery and dazzling visuals propel the narrative."),
                MovieList(movieName: "Arrival", movieImage: "arrival", movieInfo: "Linguists race to understand alien visitors before conflict erupts. A cerebral and deeply emotional take on first contact."),
                MovieList(movieName: "Ready Player One", movieImage: "readyplayerone", movieInfo: "In a dystopian future, players hunt for a virtual treasure. Pop culture references and adventure overflow."),
                MovieList(movieName: "District 9", movieImage: "district9", movieInfo: "Aliens live as refugees on Earth in a gritty social allegory. Action and thought-provoking themes blend perfectly.")
            ])
        ]
        
        genres.sort { $0.genre < $1.genre }
        
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genres.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath)
        cell.textLabel?.text = genres[indexPath.row].genre
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "listsSegue" {
            if let destination = segue.destination as? MovieListViewController,
               let indexPath = moviesTableView.indexPathForSelectedRow {
                let selectedGenre = genres[indexPath.row]
                destination.selectedGenre = selectedGenre
            }
        }
    }
}


