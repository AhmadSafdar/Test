//
//  ViewController.swift
//  Test
//
//  Created by renameme on 7/17/19.
//  Copyright © 2019 Penandweb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let userInput = "P<USAROGGER<<MICHAEL<<STEVEVE<<JR<<GEORGE<<<<<<<<<<<<<<<<<<<<<<YA11164461USA8502201M2001023<<<<<<<<<<<<<<00"
        var fullName: String = "First Last"
        let fullNameArr = userInput.components(separatedBy: "<<")
        let fullNameArr12 = userInput.split(regex: "[<]+")
        
        var firstName: String = fullNameArr[0]
        var lastName: String = fullNameArr[1]
        
        
    }
    
    
    func parseStr(str : String){
        
    }


}

extension String {
    
    func split(regex pattern: String) -> [String] {
        
        do  {
        let re = try? NSRegularExpression(pattern: pattern, options: [])
        let nsString = self as NSString // needed for range compatibility
        let stop = "<"
        let modifiedString = re!.stringByReplacingMatches(
            in: self,
            options: [],
            range: NSRange(location: 0, length: nsString.length),
            withTemplate: stop)
            return modifiedString.components(separatedBy: stop)
        }
        catch let error {
            return []
        }
    }
    
    func matches(_ regex: String) -> Bool {
        return self.range(of: regex, options: .regularExpression, range: nil, locale: nil) != nil
    }
}


extension NSRegularExpression {
    convenience init(_ pattern: String) {
        do {
            try self.init(pattern: pattern)
        } catch {
            preconditionFailure("Illegal regular expression: \(pattern).")
        }
    }
}

