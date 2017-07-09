//
//  TableViewController.swift
//  tableView
//
//  Created by Martin, Maddee on 7/9/17.
//  Copyright © 2017 Martin, Maddee. All rights reserved.
//

import UIKit

class ResourceController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let names = ["The National Domestic Violence Hotline",
                 "National Dating Abuse Helpline",
                 "Americans Overseas Domestic Violence Crisis Center",
                 "National Child Abuse Hotline/Childhelp",
                 "National Sexual Assault Hotline",
                 "National Center for Victims of Crime",
                 "National Resource Center on Domestic Violence",
                 "Futures Without Violence: The National Health Resource Center on Domestic Violence",
                 "National Center on Domestic Violence, Trauma & Mental Health"]
    
    let numbers = ["1-800-799-7233",
                   "1-866-331-9474",
                   "1-866-879-6636",
                   "1-800-422-4453",
                   "1-800-656-4673",
                   "1-202-467-8700",
                   "1-800-537-2238",
                   "1-888-792-2873",
                   "1-312-726-7020 ext. 2011"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (names.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell1")
        cell.textLabel?.text = names[indexPath.row]
        cell.detailTextLabel?.text = numbers[indexPath.row]
        
        return (cell)
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
