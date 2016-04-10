//
//  AppDelegate.swift
//  Megaphone
//
//  Created by denis lavrov on 26/03/16.
//  Copyright © 2016 bahus. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, GGLInstanceIDDelegate {

	var window: UIWindow?
	var registrationToken: String!
	var registrationOptions = [String: AnyObject]()
	let GCM_SENDER_ID = "763226488449"
	
	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		
		if #available(iOS 8.0, *) {
			let settings: UIUserNotificationSettings =
				UIUserNotificationSettings(forTypes: [.Alert, .Badge, .Sound], categories: nil)
			application.registerUserNotificationSettings(settings)
			application.registerForRemoteNotifications()
		}	else {
			// Fallback
			let types: UIRemoteNotificationType = [.Alert, .Badge, .Sound]
			application.registerForRemoteNotificationTypes(types)
		}
		
		// Override point for customization after application launch.
		return true
	}
	
	func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData) {
		print(deviceToken)
		let instanceIDConfig = GGLInstanceIDConfig.defaultConfig()
		instanceIDConfig.delegate = self
		// Start the GGLInstanceID shared instance with that config and request a registration
		// token to enable reception of notifications
		GGLInstanceID.sharedInstance().startWithConfig(instanceIDConfig)
		registrationOptions = [kGGLInstanceIDRegisterAPNSOption:deviceToken,
		                       kGGLInstanceIDAPNSServerTypeSandboxOption:true]
		GGLInstanceID.sharedInstance().tokenWithAuthorizedEntity(GCM_SENDER_ID,
		                                                         scope: kGGLInstanceIDScopeGCM, options: registrationOptions, handler: registrationHandler)
	}
	
	func registrationHandler(registrationToken: String!, error: NSError!) {
		if (registrationToken != nil) {
			self.registrationToken = registrationToken
			print("Registration Token: \(registrationToken)")
		} else {
			print("Registration to GCM failed with error: \(error.localizedDescription)")
		}
	}
	
	func onTokenRefresh() {
		// A rotation of the registration tokens is happening, so the app needs to request a new token.
		print("The GCM registration token needs to be changed.")
		GGLInstanceID.sharedInstance().tokenWithAuthorizedEntity(GCM_SENDER_ID,
                                                           scope: kGGLInstanceIDScopeGCM, options: registrationOptions, handler: registrationHandler)
	}
	
	func application(application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError) {
		print("Could not register for remote notifications", error)
	}

	func applicationWillResignActive(application: UIApplication) {
		// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
		// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
	}

	func applicationDidEnterBackground(application: UIApplication) {
		// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
		// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
	}

	func applicationWillEnterForeground(application: UIApplication) {
		// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
	}

	func applicationDidBecomeActive(application: UIApplication) {
		// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
	}

	func applicationWillTerminate(application: UIApplication) {
		// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
	}


}

