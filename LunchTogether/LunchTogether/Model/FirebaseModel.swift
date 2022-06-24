//
//  FirebaseModel.swift
//  LunchTogether
//
//  Created by Vincent Petritz on 24.06.22.
//

import Foundation

protocol FirebaseModel: Decodable {
        
    static var collectionName: String { get }
}
