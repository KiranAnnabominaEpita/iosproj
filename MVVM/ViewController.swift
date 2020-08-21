//
//  ViewController.swift
//  MVVM
//
//  Created by user on 20/08/2020.
//

import UIKit

let jsonString = """
[
    {
        "name": "Arizona Cardinals",
        "desc": "The Arizona Cardinals are a professional American football team based in the Phoenix metropolitan area. The Cardinals compete in the National Football League as a member club of the National Football Conference West division",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Aeneas Williams",
        "image": "https://cutterbuck.com/product_images/uploaded_images/arizona-logoslick-2-mobile.png"
    },
    {
        "name": "Baltimore Ravens",
        "desc": "The Baltimore Ravens are a professional American football team based in Baltimore. The Ravens compete in the National Football League as a member club of the American Football Conference North division. The team plays its home games at M&T Bank Stadium and is headquartered in Owings Mills.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Mike Flynn",
        "image": "https://i.pinimg.com/originals/98/0b/fa/980bfaea0485c02c1a789946e6a5829b.jpg"
    },
    {
        "name": "Atlanta Falcons",
        "desc": "The Atlanta Falcons are a professional American football team based in Atlanta. The Falcons compete in the National Football League as a member club of the league's National Football Conference South division.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Jamal Anderson",
        "image": "https://images-na.ssl-images-amazon.com/images/I/51%2BRYGaGqyL._AC_SX522_.jpg"
    },
    {
        "name": "Buffalo Bills",
        "desc": "The Buffalo Bills are a professional American football team based in the Buffalo–Niagara Falls metropolitan area. The Bills compete in the National Football League as a member club of the league's American Football Conference East division.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "DE Bruce Smith",
        "image": "https://cdn.shopify.com/s/files/1/1949/1233/products/buffalo-bills-cirle-copy.jpg?v=1575428295"
    },
    {
        "name": "Carolina Panthers",
        "desc": "The Carolina Panthers are a professional American football team based in Charlotte, North Carolina. The Panthers compete in the National Football League, as a member club of the league's National Football Conference South division.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Cam Newton",
        "image": "https://img.bleacherreport.net/img/images/photos/001/550/344/panthers_original_crop_north.jpg?1327940027&w=630&h=420"
    },
    {
        "name": "Cincinnati Bengals",
        "desc": "The Cincinnati Bengals are a professional American football franchise based in Cincinnati. The Bengals compete in the National Football League as a member club of the league's American Football Conference North division. Their home stadium is Paul Brown Stadium, located in downtown Cincinnati.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Joe Burrow",
        "image": "https://lh3.googleusercontent.com/proxy/IWGp8VMeQCBOuqJFX5jb2tnupc3BbVjSHl-KiISUUg_x4drSJzEXoJupPXkZuCU-c90prfoBpVUlltL6Yb9PKjuXLQ6RtwinBRpjkXcrduIHmIdBzA4ksno98o9gPvb8T31h2R8dME_Cfg59EA"
    },
    {
        "name": "Chicago Bears",
        "desc": "The Chicago Bears are a professional American football team based in Chicago. The Bears compete in the National Football League as a member club of the league's National Football Conference North division. ",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Walter Payton",
        "image": "https://1000logos.net/wp-content/uploads/2016/11/Chicago-Bears-Emblem.jpg"
    },
    {
        "name": "Cleveland Browns",
        "desc": "The Cleveland Browns are a professional American football team based in Cleveland. Named after original coach and co-founder Paul Brown, they compete in the National Football League as a member club of the American Football Conference North division.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Jim Brown",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRrUnw5WL_mTr7AVLNMBx2PabVQOIqlP3KIEg&usqp=CAU"
    },
    {
        "name": "Dallas Cowboys",
        "desc": "The Dallas Cowboys are a professional American football team based in the Dallas–Fort Worth metroplex. The Cowboys compete in the National Football League as a member club of the league's National Football Conference East division",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Larry Allen",
        "image": "https://dks.scene7.com/is/image/GolfGalaxy/19ASSUNFLCWBYS12CDAL?qlt=70&wid=600&fmt=pjpeg"
    },
    {
        "name": "Denver Broncos",
        "desc": "The Denver Broncos are a professional American football franchise based in Denver. The Broncos compete in the National Football League as a member club of the league's American Football Conference West division.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "John Elway",
        "image": "https://i.pinimg.com/originals/2f/07/18/2f071887d940fac4bd3122ec5a87aeba.jpg"
    },
    {
        "name": "Detroit Lions",
        "desc": "The Detroit Lions are a professional American football team based in Detroit. The Lions compete in the National Football League as a member club of the National Football Conference North division. The team plays its home games at Ford Field in Detroit.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Matthew Stafford",
        "image": "https://cdn.shopify.com/s/files/1/1949/1233/products/Detroit_Lions_circle_1024x1024.png?v=1575428276"
    },
    {
        "name": "Houston Texans",
        "desc": "The Houston Texans are a professional American football team based in Houston. The Texans compete in the National Football League as a member club of the American Football Conference South division. The team plays its home games at NRG Stadium.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Jadeveon Clowney",
        "image": "https://cdn.shopify.com/s/files/1/1949/1233/products/Houston_Texans_circle_1024x1024.png?v=1575428276"
    },
    {
        "name": "Green Bay Packers",
        "desc": "The Green Bay Packers are a professional American football team based in Green Bay, Wisconsin. The Packers compete in the National Football League as a member club of the National Football Conference North division.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Aaron Rodgers",
        "image": "https://embroidnew.com/pub/media/catalog/product/g/r/green_bay_packers_round_logo_machine_embroidery_design.jpg"
    },
    {
        "name": "Indianapolis Colts",
        "desc": "The Indianapolis Colts are an American football team based in Indianapolis. The Colts compete in the National Football League as a member club of the league's American Football Conference South division. Since the 2008 season, the Colts have played their games in Lucas Oil Stadium.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Quenton Nelson",
        "image": "https://sportslogohistory.com/wp-content/uploads/2018/04/indianapolis_colts_justin_wilkinson_c.png"
    },
    {
        "name": "Los Angeles Rams",
        "desc": "The Los Angeles Rams are a professional American football team based in the Los Angeles metropolitan area. The Rams compete in the National Football League as a member club of the National Football Conference West division.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "DT Aaron Donald",
        "image": "https://embroidnew.com/pub/media/catalog/product/l/o/los_angeles_rams_logo_machine_embroidery_design.jpg"
    },
    {
        "name": "Jacksonville Jaguars",
        "desc": "The Jacksonville Jaguars are a professional football franchise based in Jacksonville, Florida. The Jaguars compete in the National Football League as a member club of the American Football Conference South division. The team plays its home games at TIAA Bank Field. ",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Tony Boselli",
        "image": "https://lh3.googleusercontent.com/proxy/3t1hC2iBAEF_vJBHXtdF51yQ_5jtSJjF7DZHo7THAmLQ_v3Qs0AHmHtTILxbfM2GNLjPlhwt0VsT6rkCjJcpNezjIHeCEu43E2cQKEh-JoS1mBD4goXvad5-trhmhPBDIY1_r_w"
    },
    {
        "name": "Minnesota Vikings",
        "desc": "The Minnesota Vikings are a professional American football team based in Minneapolis. The Vikings joined the National Football League as an expansion team in 1960, and first took the field for the 1961 season. The team competes in the National Football Conference North division.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Adrian Peterson",
        "image": "https://cdn.shopify.com/s/files/1/1949/1233/products/Minnesota_Vikings_circle_1024x1024.png?v=1575428277"
    },
    {
        "name": "Kansas City Chiefs",
        "desc": "The Kansas City Chiefs are a professional American football team based in Kansas City, Missouri. The Chiefs compete in the National Football League as a member club of the league's American Football Conference West division. ",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Patrick Mahomes",
        "image": "https://cdn.shopify.com/s/files/1/1949/1233/products/KC_Chiefs_circle.png?v=1575428277"
    },
    {
        "name": "New Orleans Saints",
        "desc": "The New Orleans Saints are a professional American football team based in New Orleans. The Saints compete in the National Football League as a member of the league's National Football Conference South division. The team was founded by John W. Mecom Jr., David Dixon, and the city of New Orleans on November 1, 1966.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Alvin Kamara",
        "image": "https://cdn.shopify.com/s/files/1/1513/8092/products/1068_new_orleans_saints_1024x1024.jpg?v=1571439442"
    },
    {
        "name": "Las Vegas Raiders",
        "desc": "The Las Vegas Raiders are a professional American football team based in the Las Vegas metropolitan area. The Raiders compete in the National Football League as a member club of the league's American Football Conference West division.",
        "Origin of country": "USA",
        "Most important tournament name": "Copa America",
        "Participated countries": "USA, Australia, Japan",
        "famous person": "Jon Gruden",
        "image": "https://cdn.shopify.com/s/files/1/1949/1233/products/Las_Vegas_Raiders_circle_1024x1024.png?v=1575428277"
    }

]
"""

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    var teams: [team]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let decoder = JSONDecoder()
        
        let jsonData = Data(jsonString.utf8)
                
        do {
            teams = try decoder.decode([team].self, from: jsonData)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        let a = teams![indexPath.row]
        
        cell.userimage.image = nil;
        
        let imgURL: NSURL = NSURL(string: a.image)!
        let request: NSURLRequest = NSURLRequest(url: imgURL as URL)
        let session = URLSession.shared
        let task = session.dataTask(with: request as URLRequest, completionHandler: {data, response, error -> Void in
            let error = error
            let data = data
            if error == nil {
                let image = UIImage(data: data!)
                DispatchQueue.global(qos: .background).async {
                    DispatchQueue.main.async {
                        if let cell: TableViewCell = tableView.cellForRow(at: indexPath) as? TableViewCell {
                            cell.userimage.image = image
                        }
                    }
                }
            }
        })
        task.resume()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let str = UIStoryboard(name: "Main", bundle: nil)
        let controller = str.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        controller.teams = teams![indexPath.row]
        self.present(controller, animated: true, completion: nil)
    }
}

