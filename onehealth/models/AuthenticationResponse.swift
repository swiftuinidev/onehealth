//
//  AuthenticationResponse.swift
//  onehealth
//
//  Created by David Buckley on 11/06/2022.
//

import Foundation
class AuthenticationResponse: ObservableObject {
 
@Published var jwtToken: String

    
    init(jwtToken: String) {
        self.jwtToken = jwtToken
    
    }
    
}

