//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Admin Mac on 3/4/22.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var backDrop: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let baseDropUrl = "https://image.tmdb.org/t/p/w780"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        let backDropPath = movie["backdrop_path"] as! String
        let backDropUrl = URL(string: baseDropUrl + backDropPath)
        
        posterView.af.setImage(withURL: posterUrl!)
        backDrop.af.setImage(withURL: backDropUrl!)
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
