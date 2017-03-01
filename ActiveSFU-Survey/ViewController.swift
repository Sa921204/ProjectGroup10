//
//  ViewController.swift
//  ActiveSFU-Survey
//
//  Created by CoolMac on 2017-02-28.
//  Copyright © 2017 CoolMac. All rights reserved.
//

import UIKit

class QuestionController: UITableViewController {

    //this can really be any value or name, it's just to assign a unique id to the tableview object later
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Text at top
        navigationItem.title = "Question"

        //register the answercell class in creating new table cells. Assign this an id value of 'cellID'
        tableView.register(AnswerCell.self, forCellReuseIdentifier: cellID)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //repeat the answer labels 5 times
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    //Recognize the cellID and create tableobjects accordingly
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
    }

}

class AnswerCell: UITableViewCell{ //create a class for our answer cells
   
    //initialize table cell
    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    //this was added by xcode automatically after creating our class, don't worry about it
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Create and set label properties
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "CMPT 276 makes me want to pull my eyes out"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //setup the constrains of the labels
    func setupViews(){
        addSubview(nameLabel)
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":nameLabel]))
        
    }
}
