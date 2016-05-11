//
//  MegaphoneClient.swift
//  Megaphone
//
//  Created by denis lavrov on 26/03/16.
//  Copyright © 2016 bahus. All rights reserved.
//

import Foundation



class MegaphoneClient{
	let SERVER_URL = "https://megaphone-service.appspot.com"
	var IDENTITY: String?
	
	
	func sendPost(requestData: NSData, url: String){
		let request = NSMutableURLRequest(URL: NSURL(string: url)!)
		request.HTTPMethod = "POST"
		request.HTTPBody = requestData
		let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
			guard error == nil && data != nil else {                                                          // check for fundamental networking error
				print("error=\(error)")
				return
			}
			
			if let httpStatus = response as? NSHTTPURLResponse where httpStatus.statusCode != 200 {           // check for http errors
				print("statusCode should be 200, but is \(httpStatus.statusCode)")
				print("response = \(response)")
			}
			
			let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
			print("responseString = \(responseString)")
		}
		task.resume()
	}
	
	func login(){
		sendPost((IDENTITY?.dataUsingEncoding(NSUTF8StringEncoding))!, url: SERVER_URL + "/login")
	}
	
}