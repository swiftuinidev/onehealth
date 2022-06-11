//
//  WebApiManager.swift
//  onehealth
//
//  Created by David Buckley on 11/06/2022.
//

import Foundation
let jwtAccessToken: String = ""
let urlString = "http://api-hockeylab.com/login"
 
func CallWebApi()

{
    // create the url with URL
      let url = URL(string: urlString)! // change server url accordingly
    let parameters: [String: Any] = [ "username": "brandon@hockeylabmn.com",
                                      "password": "Fitness1!"]

    var request = URLRequest(url: url)
    request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpMethod = "Post"

    
    do {
     request.httpBody =  try 	JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
    } catch let error {
        print(error.localizedDescription)
        return
      }
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        guard
            let data = data,
            let response = response as? HTTPURLResponse,
            error == nil
        else {                                                               // check for fundamental networking error
            print("error", error ?? URLError(.badServerResponse))
            return
        }
        
        guard (200 ... 299) ~= response.statusCode else {                    // check for http errors
            print("statusCode should be 2xx, but is \(response.statusCode)")
            print("response = \(response)")
            return
        }
        
        // do whatever you want with the `data`, e.g.:
        
        do {
            let responseObject = data
            print(responseObject)
        } catch {
            print(error) // parsing error
            
            if let responseString = String(data: data, encoding: .utf8) {
                print("responseString = \(responseString)")
            } else {
                print("unable to parse response as string")
            }
        }
    }

    task.resume()
    
}
