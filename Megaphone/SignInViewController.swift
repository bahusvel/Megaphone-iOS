//
//  SignInViewController.swift
//  Megaphone
//
//  Created by denis lavrov on 22/04/16.
//  Copyright © 2016 bahus. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UIWebViewDelegate {
	static var cookie: NSHTTPCookie? = nil
	@IBOutlet weak var webView: UIWebView!
	let LOGIN_URL = NSURL(string: "https://megaphone-service.appspot.com/login")!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	override func viewDidAppear(animated: Bool) {
		if checkCookie() {
			self.performSegueWithIdentifier("loginSegue", sender: self)
		} else {
			webView.hidden = false
			let request = NSMutableURLRequest(URL: LOGIN_URL)
			request.HTTPMethod = "GET"
			webView.delegate = self
			webView.loadRequest(request)
		}
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	func webViewDidFinishLoad(webView: UIWebView) {
		print("Finished")
		if checkCookie(){
			login()
			self.performSegueWithIdentifier("loginSegue", sender: self)
		}
	}
	
	func checkCookie() -> Bool{
		let cookies = NSHTTPCookieStorage.sharedHTTPCookieStorage().cookiesForURL(LOGIN_URL)
		
		for cookie in cookies!{
			if cookie.name == "SACSID" {
				print(cookie.value)
				SignInViewController.cookie = cookie
				return true
			}
		}
		return false
	}
	
	
	func login(){
		let request = NSMutableURLRequest(URL: LOGIN_URL)
		request.HTTPMethod = "GET"
		let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
			guard error == nil && data != nil else {
				print("error=\(error)")
				return
			}
			if let httpStatus = response as? NSHTTPURLResponse where httpStatus.statusCode != 200 {
				print("statusCode should be 200, but is \(httpStatus.statusCode)")
				print("response = \(response)")
			}
			let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
			print("responseString = \(responseString)")
		}
		task.resume()
	}
	
}
