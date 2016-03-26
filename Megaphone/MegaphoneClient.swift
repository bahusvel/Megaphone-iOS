//
//  MegaphoneClient.swift
//  Megaphone
//
//  Created by denis lavrov on 26/03/16.
//  Copyright © 2016 bahus. All rights reserved.
//

import Foundation



class MegaphoneClient{
	let SERVER_URL = ""
	let IDENTITY = "bahus.vel@gmail.com"
	
	
	func sendPost(requestData: NSData, url: String){
		let postLength = String(requestData.length)
		let request = NSMutableURLRequest(URL: NSURL(string: url)!)
		request.HTTPMethod = "POST"
		request.setValue(postLength, forHTTPHeaderField: "Content-Length")
		request.setValue("application/json", forKey: "Content-Type")
		request.HTTPBody = requestData
		NSURLConnection(request: request, delegate: self)
	}
	
	
}