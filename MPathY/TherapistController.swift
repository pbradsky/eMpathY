//
//  ViewController.swift
//  tableView
//
//  Created by Martin, Maddee on 7/9/17.
//  Copyright © 2017 Martin, Maddee. All rights reserved.
//

import UIKit

class TherapistController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let therapists = ["Patrick J. Norton",
                      "Dorothy Boerste",
                      "Vernon Lee",
                      "Ginger Rhodes",
                      "Solid Grounds Psychotherapy",
                      "Rajani Venkatraman Levis",
                      "Holly Greenberg",
                      "Helen Star",
                      "Outside Medicine",
                      "Nadia Ashjaee",
                      "Gloria Namkung",
                      "Jennifer Jimenez Wong"]
    
    let distances = ["0.4 mi",
                     "0.9 mi",
                     "1.4 mi",
                     "1.9 mi",
                     "2.1 mi",
                     "2.1 mi",
                     "2.1 mi",
                     "3.8 mi",
                     "10.9 mi",
                     "11.0 mi",
                     "13.2 mi",
                     "22.6 mi"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (therapists.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        cell.textLabel?.text = therapists[indexPath.row]
        cell.detailTextLabel?.text = distances[indexPath.row]
        
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destination = storyboard.instantiateViewController(withIdentifier: "therapistDetail")
        navigationController?.pushViewController(destination, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated
    }
    
}
