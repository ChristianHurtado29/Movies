//
//  ViewController.swift
//  Movies
//
//  Created by Christian Hurtado on 11/20/19.
//  Copyright © 2019 Christian Hurtado. All rights reserved.
//

import UIKit

class MovieVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var currentFontSize1 = CGFloat(20) {
        didSet{
            tableView.reloadData()
        }
    }
    
    var movies = [Movie](){
        didSet{
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        loadData()
    }
    
    @IBAction func unwindEvent(segue: UIStoryboardSegue){
        guard let movieDetailVC = segue.source as? MovieDetailVC else{
            fatalError("failed to get MovieDVC")
        }
        currentFontSize1 = movieDetailVC.currentFontSize!
    }
    
    func loadData() {
        movies = Movie.allMovies
    }
}
extension MovieVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)

        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.name
        cell.textLabel?.font = UIFont(name: "Times New Roman", size: currentFontSize1)
        cell.detailTextLabel?.text = movie.year.description
        cell.detailTextLabel?.font = UIFont(name: "Times New Roman", size: currentFontSize1)
        
        return cell
    }
    
}
