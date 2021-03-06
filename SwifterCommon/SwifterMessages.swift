//
//  SwifterMessages.swift
//  Swifter
//
//  Copyright (c) 2014 Matt Donnelly.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

extension Swifter {

    /*
        GET	direct_messages

        Returns the 20 most recent direct messages sent to the authenticating user. Includes detailed information about the sender and recipient user. You can request up to 200 direct messages per call, up to a maximum of 800 incoming DMs.
    */
    func getDirectMessagesSinceID(sinceID: Int?, maxID: Int?, count: Int?, includeEntities: Bool?, skipStatus: Bool?, success: JSONSuccessHandler?, failure: SwifterHTTPRequest.FailureHandler?) {
        let path = "direct_messages.json"

        var parameters = Dictionary<String, AnyObject>()
        if sinceID {
            parameters["since_id"] = sinceID!
        }
        if maxID {
            parameters["max_id"] = maxID!
        }
        if count {
            parameters["count"] = count!
        }
        if includeEntities {
            parameters["include_entities"] = includeEntities!
        }
        if skipStatus {
            parameters["skip_status"] = skipStatus!
        }

        self.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, uploadProgress: nil, downloadProgress: nil, success: success, failure: failure)
    }

    /*
        GET    direct_messages/sent

        Returns the 20 most recent direct messages sent by the authenticating user. Includes detailed information about the sender and recipient user. You can request up to 200 direct messages per call, up to a maximum of 800 outgoing DMs.
    */
    func getSentDirectMessagesSinceID(sinceID: Int?, maxID: Int?, count: Int?, page: Int?, includeEntities: Bool?, success: JSONSuccessHandler?, failure: SwifterHTTPRequest.FailureHandler?) {
        let path = "direct_messages/sent.json"

        var parameters = Dictionary<String, AnyObject>()
        if sinceID {
            parameters["since_id"] = sinceID!
        }
        if maxID {
            parameters["max_id"] = maxID!
        }
        if count {
            parameters["count"] = count!
        }
        if page {
            parameters["page"] = page!
        }
        if includeEntities {
            parameters["include_entities"] = includeEntities!
        }

        self.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, uploadProgress: nil, downloadProgress: nil, success: success, failure: failure)
    }

    /*
        GET    direct_messages/show

        Returns a single direct message, specified by an id parameter. Like the /1.1/direct_messages.format request, this method will include the user objects of the sender and recipient.
    */
    func getDirectMessagesShowWithID(id: Int, success: JSONSuccessHandler?, failure: SwifterHTTPRequest.FailureHandler?) {
        let path = "direct_messages/show.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["id"] = id

        self.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, uploadProgress: nil, downloadProgress: nil, success: success, failure: failure)
    }

    /*
        POST	direct_messages/destroy

        Destroys the direct message specified in the required ID parameter. The authenticating user must be the recipient of the specified direct message.
    */
    func postDestroyDirectMessageWithID(id: Int, includeEntities: Bool?, success: JSONSuccessHandler?, failure: SwifterHTTPRequest.FailureHandler?) {
        let path = "direct_messages/destroy.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["id"] = id

        if includeEntities {
            parameters["include_entities"] = includeEntities!
        }

        self.postJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, uploadProgress: nil, downloadProgress: nil, success: success, failure: failure)
    }

    /*
        POST	direct_messages/new

        Sends a new direct message to the specified user from the authenticating user. Requires both the user and text parameters and must be a POST. Returns the sent message in the requested format if successful.
    */
    func postDirectMessagesWithStatus(status: String, to screenName: String, success: JSONSuccessHandler?, failure: SwifterHTTPRequest.FailureHandler?) {
        let path = "direct_messages/new.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["status"] = status
        parameters["sceen_name"] = screenName

        self.postJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, uploadProgress: nil, downloadProgress: nil, success: success, failure: failure)
    }

}
