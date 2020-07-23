//
//  ApiConstant.swift
//  MultiEnviromentHandling
//
//  Created by Nitin Bhatia on 07/09/19.
//  Copyright © 2019 Nitin Bhatia. All rights reserved.
//

import Foundation

let apiUrl = AllUrl()

let baseUrl = Environment().configuration(PlistKey.Base_Url) + "//"
let serverUrl = Environment().configuration(PlistKey.Server_Url)
class AllUrl  {
    var postUrl = baseUrl + serverUrl + "/posts"
}
