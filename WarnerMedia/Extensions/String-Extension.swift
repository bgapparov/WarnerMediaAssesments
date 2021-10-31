//
//  Extension_String.swift
//  WarnerMedia
//
//  Created by Baiaman Gapparov on 10/26/21.
//

import Foundation

protocol SearchTextSpaceRemover{}

extension String: SearchTextSpaceRemover {
    public var isNotEmpty: Bool {
        return !isEmpty
    }
}

extension SearchTextSpaceRemover where Self == String {
    
    //MARK: - Removing space from String
    var removeSpace: String {
        if self.isNotEmpty {
           return self.components(separatedBy: .whitespaces).joined()
        }else{
           return ""
        }
    }
}
