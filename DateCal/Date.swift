//
//  Date.swift
//  DateCal
//
//  Created by Donavin Watson on 4/26/20.
//  Copyright © 2020 Don Watsy. All rights reserved.
//

import Foundation

//Doesn't know that leap years exist.

struct Date {
	static let lengths: [Int] = [   //an array of 13 Ints.  12 of them will be used.
		0,
		31, // 1 January
		28, // 2 February
		31, // 3 March
		30, // 4 April
		31, // 5 May
		30, // 6 June
		31, // 7 July
		31, // 8 August
		30, // 9 September
		31, //10 October
		30, //11 November
		31  //12 December
	];
	
	var year: Int;
	var month: Int;   //in the range 1 to 12 inclusive
	var day: Int;
	
	init(month: Int, day: Int, year: Int) {
		self.year = year;
		self.month = month;
		self.day = day;
		if !(1 ... 12).contains(month) {
			print("bad month \(month)");
		}
		if !(1 ... length()).contains(day) {
			print("bad month \(month), bad day \(day)");
		}
	}
	
	//Return the length of month.
	
	func length() -> Int {
		return Date.lengths[month];
	}
	
	//Move self one day into the future.
	
	mutating func next() {
		if self.day < length() {
			self.day += 1;
		} else {
			self.day = 1;
			if month < Date.lengths.count - 1 {
				self.month += 1;
			} else {
				self.month = 1;
				self.year += 1;
			}
		}
	}
	
	mutating func prev() {
		if self.day < length() {
			self.day -= 1;
		} else {
			self.day = 1;
			if month > Date.lengths.count + 1 {
				self.month -= 1;
			} else {
				self.month = 1;
				self.year -= 1;
			}
		}
	}
	
	
}


