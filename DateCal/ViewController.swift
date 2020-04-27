//
//  ViewController.swift
//  DateCal
//
//  Created by Donavin Watson on 4/27/20.
//  Copyright © 2020 Don Watsy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var monthLabel: UILabel!
	@IBOutlet weak var dayLabel: UILabel!
	@IBOutlet weak var yearLabel: UILabel!
	
	let calendar = NSCalendar.self
	let date = NSDate.self
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
	}

	@IBAction func prevButton(_ sender: UIButton) {

	}
	
	@IBAction func nextButton(_ sender: UIButton) {
	}
}

