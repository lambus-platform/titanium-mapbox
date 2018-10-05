//
//  TiMapboxModule.swift
//  titanium-mapbox
//
//  Created by Your Name
//  Copyright (c) 2018 Your Company. All rights reserved.
//

import UIKit
import TitaniumKit

/**
 
 Titanium Swift Module Requirements
 ---
 
 1. Use the @objc annotation to expose your class to Objective-C (used by the Titanium core)
 2. Use the @objc annotation to expose your method to Objective-C as well.
 3. Method arguments always have the "[Any]" type, specifying a various number of arguments.
 Unwrap them like you would do in Swift, e.g. "guard let arguments = arguments, let message = arguments.first"
 4. You can use any public Titanium API like before, e.g. TiUtils. Remember the type safety of Swift, like Int vs Int32
 and NSString vs. String.
 
 */

@objc(TiMapboxModule)
class TiMapboxModule: TiModule {

  public let testProperty: String = "Hello World"
  
  func moduleGUID() -> String {
    return "6f0a80c7-7e50-4e67-bbb8-8cc36b629740"
  }
  
  override func moduleId() -> String! {
    return "ti.mapbox"
  }

  override func startup() {
    super.startup()
    debugPrint("[DEBUG] \(self) loaded")
  }
  
  @objc(tryThis:)
  func tryThis(arguments: Array<Any>?) -> String {
    guard let arguments = arguments, let message = arguments.first else { return "No arguments" }
    
    return "\(message) from TiSwift!"
  }
}
