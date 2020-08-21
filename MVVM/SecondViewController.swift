//
//  SecondViewController.swift
//  MVVM
//
//  Created by user on 20/08/2020.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var teamimage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var origincountry: UILabel!
    @IBOutlet weak var tournamentname: UILabel!
    @IBOutlet weak var player: UILabel!
    
    var teams: team?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let imgURL: NSURL = NSURL(string: teams!.image)!
        let request: NSURLRequest = NSURLRequest(url: imgURL as URL)
        let session = URLSession.shared
        let task = session.dataTask(with: request as URLRequest, completionHandler: {data, response, error -> Void in
            let error = error
            let data = data
            if error == nil {
                let image = UIImage(data: data!)
                DispatchQueue.global(qos: .background).async {
                    DispatchQueue.main.async {
                        self.teamimage.image = image
                    }
                }
            }
        })
        task.resume()
        
        name.text = teams?.name
        desc.text = teams?.desc
        origincountry.text = teams?.originOfCountry
        tournamentname.text = teams?.mostImportantTournamentName
        player.text = teams?.famousPerson
        // Do any additional setup after loading the view.
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
