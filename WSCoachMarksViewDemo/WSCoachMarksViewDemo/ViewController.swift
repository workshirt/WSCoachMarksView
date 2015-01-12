//
//  ViewController.swift
//  WSCoachMarksViewDemo
//
//  Created by Alex Tang on 1/10/15.
//  Copyright (c) 2015 Gruv. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var coachMarksView: WSCoachMarksView?

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.dataSource = self
        setupHelp()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupHelp() {
        var coachMarks: [[String: AnyObject]] = [
            [
                "tag": 1,
                "caption": "This is some text that you'd do something with",
//                "padding": 5,
//                "paddingLeft": 5,
//                "paddingRight": -10,
//                "paddingBottom": "-75%"
            ],
            [
                "tag": 2,
                "padding" : 15,
                "caption": "Press OK and you're done!"
            ],
            [
                "tag": [ 3, 2],
                "caption": "this should be item with tag 3.2"
            ],
            [
                "tag": [ 3, 5],
                "caption": "This should be an unknown tag"
            ],
            [
                "tag": 15,
                "caption": "This should be an unknown single tag"
            ],
        ]
        var coachMarksView = WSCoachMarksView(frame: self.view.bounds, coachMarks: coachMarks)
//        coachMarksView.maskColor = UIColor(white: 1, alpha: 0.92)
        coachMarksView.cutoutRadius = 10
//        coachMarksView.cutoutPaddingDistance = 0
        self.coachMarksView = coachMarksView
        view.addSubview(coachMarksView)
        coachMarksView.start()
    }

    @IBAction func helpTapped(sender: AnyObject) {
        if let coachMarksView = self.coachMarksView {
            self.view.addSubview(coachMarksView)
            coachMarksView.start()
        }
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }


    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("reuse1", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = "reuse \(indexPath.row)"
        NSLog("cellForIndexPath: \(indexPath.row)")
        cell.tag = indexPath.row + 1
        return cell
    }

}

