//
//  SwifterFollowers.swift
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

    func getFriendshipsNoRetweetsIDsWithStringifyIDs(stringifyIDs: Bool?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "friendships/no_retweets/ids.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["stringify_ids"] = stringifyIDs!

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getFriendsIDsWithID(id: Int, cursor: Int?, stringifyIDs: Bool?, count: Int?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "friends/ids.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["id"] = id

        if cursor {
            parameters["cursor"] = cursor!
        }
        if stringifyIDs {
            parameters["stringify_ids"] = stringifyIDs!
        }
        if count {
            parameters["count"] = count!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getFriendsIDsWithScreenName(screenName: String, cursor: Int?, stringifyIDs: Bool?, count: Int?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "friends/ids.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["screen_name"] = screenName

        if cursor {
            parameters["cursor"] = cursor!
        }
        if stringifyIDs {
            parameters["stringify_ids"] = stringifyIDs!
        }
        if count {
            parameters["count"] = count!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getFollowersIDsWithID(id: Int, cursor: Int?, stringifyIDs: Bool?, count: Int?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "followers/ids.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["id"] = id

        if cursor {
            parameters["cursor"] = cursor!
        }
        if stringifyIDs {
            parameters["stringify_ids"] = stringifyIDs!
        }
        if count {
            parameters["count"] = count!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getFollowersIDsWithScreenName(screenName: String, cursor: Int?, stringifyIDs: Bool?, count: Int?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "followers/ids.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["screen_name"] = screenName

        if cursor {
            parameters["cursor"] = cursor!
        }
        if stringifyIDs {
            parameters["stringify_ids"] = stringifyIDs!
        }
        if count {
            parameters["count"] = count!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getFriendshipsIncomingWithCursor(cursor: String?, stringifyIDs: String?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "friendships/incoming.json"

        var parameters = Dictionary<String, AnyObject>()
        if cursor {
            parameters["cursor"] = cursor!
        }
        if stringifyIDs {
            parameters["stringify_urls"] = stringifyIDs!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getFriendshipsOutgoingWithCursor(cursor: String?, stringifyIDs: String?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "friendships/outgoing.json"

        var parameters = Dictionary<String, AnyObject>()
        if cursor {
            parameters["cursor"] = cursor!
        }
        if stringifyIDs {
            parameters["stringify_urls"] = stringifyIDs!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func postCreateFriendshipWithID(id: Int, follow: Bool?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "friendships/create.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["id"] = id

        if follow {
            parameters["follow"] = follow!
        }

        self.oauthClient.postJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func postCreateFriendshipWithScreenName(screenName: String, follow: Bool?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "friendships/create.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["screen_name"] = screenName

        if follow {
            parameters["follow"] = follow!
        }

        self.oauthClient.postJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func postDestroyFriendshipWithID(id: Int, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "friendships/destroy.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["id"] = id

        self.oauthClient.postJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func postDestroyFriendshipWithScreenName(screenName: String, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "friendships/destroy.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["screen_name"] = screenName

        self.oauthClient.postJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func postUpdateFriendshipWithID(id: Int, device: Bool?, retweets: Bool?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "friendships/update.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["id"] = id

        if device {
            parameters["device"] = device!
        }
        if retweets {
            parameters["retweets"] = retweets!
        }

        self.oauthClient.postJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func postUpdateFriendshipWithScreenName(screenName: String, device: Bool?, retweets: Bool?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "friendships/update.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["screen_name"] = screenName

        if device {
            parameters["device"] = device!
        }
        if retweets {
            parameters["retweets"] = retweets!
        }

        self.oauthClient.postJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getFriendshipsShowWithSourceID(sourceID: Int?, orSourceScreenName sourceScreenName: String?, targetID: Int?, orTargetScreenName targetScreenName: String?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        assert(sourceID || sourceScreenName, "Either a source screenName or a userID must be provided.")
        assert(targetID || targetScreenName, "Either a target screenName or a userID must be provided.")

        let path = "friendships/show.json"

        var parameters = Dictionary<String, AnyObject>()
        if sourceID {
            parameters["source_id"] = sourceID!
        }
        else if sourceScreenName {
            parameters["source_screen_name"] = sourceScreenName!
        }
        if targetID {
            parameters["target_id"] = targetID!
        }
        else if targetScreenName {
            parameters["targetScreenName"] = targetScreenName!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getFriendsListWithID(id: Int, cursor: Int?, count: Int?, skipStatus: Bool?, includeUserEntities: Bool?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "friendships/list.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["id"] = id

        if cursor {
            parameters["cursor"] = cursor!
        }
        if count {
            parameters["count"] = count!
        }
        if skipStatus {
            parameters["skip_status"] = skipStatus!
        }
        if includeUserEntities {
            parameters["include_user_entities"] = includeUserEntities!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getFriendsListWithScreenName(screenName: String, cursor: Int?, count: Int?, skipStatus: Bool?, includeUserEntities: Bool?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "friendships/list.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["screen_name"] = screenName

        if cursor {
            parameters["cursor"] = cursor!
        }
        if count {
            parameters["count"] = count!
        }
        if skipStatus {
            parameters["skip_status"] = skipStatus!
        }
        if includeUserEntities {
            parameters["include_user_entities"] = includeUserEntities!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getFollowersListWithID(id: Int, cursor: Int?, count: Int?, skipStatus: Bool?, includeUserEntities: Bool?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "followers/list.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["id"] = id

        if cursor {
            parameters["cursor"] = cursor!
        }
        if count {
            parameters["count"] = count!
        }
        if skipStatus {
            parameters["skip_status"] = skipStatus!
        }
        if includeUserEntities {
            parameters["include_user_entities"] = includeUserEntities!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getFollowersListWithScreenName(screenName: String, cursor: Int?, count: Int?, skipStatus: Bool?, includeUserEntities: Bool?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "followers/list.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["screen_name"] = screenName

        if cursor {
            parameters["cursor"] = cursor!
        }
        if count {
            parameters["count"] = count!
        }
        if skipStatus {
            parameters["skip_status"] = skipStatus!
        }
        if includeUserEntities {
            parameters["include_user_entities"] = includeUserEntities!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getFriendshipsLookupWithScreenName(screenName: String, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "followers/lookup.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["screen_name"] = screenName

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getFriendshipsLookupWithID(id: Int, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "followers/lookup.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["id"] = id

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getUsersContributeesWithUserID(id: Int, includeEntities: Bool?, skipStatus: Bool?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "users/contributees.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["id"] = id

        if includeEntities {
            parameters["include_entities"] = includeEntities!
        }
        if skipStatus {
            parameters["skip_status"] = skipStatus!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getUsersContributeesWithScreenName(screenName: String, includeEntities: Bool?, skipStatus: Bool?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "users/contributees.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["screen_name"] = screenName

        if includeEntities {
            parameters["include_entities"] = includeEntities!
        }
        if skipStatus {
            parameters["skip_status"] = skipStatus!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getUsersContributorsWithUserID(id: Int, includeEntities: Bool?, skipStatus: Bool?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "users/contributors.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["id"] = id

        if includeEntities {
            parameters["include_entities"] = includeEntities!
        }
        if skipStatus {
            parameters["skip_status"] = skipStatus!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getUsersContributorsWithScreenName(screenName: String, includeEntities: Bool?, skipStatus: Bool?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "users/contributors.json"

        var parameters = Dictionary<String, AnyObject>()
        parameters["screen_name"] = screenName

        if includeEntities {
            parameters["include_entities"] = includeEntities!
        }
        if skipStatus {
            parameters["skip_status"] = skipStatus!
        }

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func postAccountRemoveProfileBannerWithSuccess(success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "account/remove_profile_banner.json"

        self.oauthClient.postJSONWithPath(path, baseURL: self.apiURL, parameters: [:], progress: nil, success: success, failure: failure)
    }

    func postAccountUpdateProfileBannerWithImageData(imageData: NSData?, width: Int?, height: Int?, offsetLeft: Int?, offsetTop: Int?, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "account/update_profile_banner.json"

        var parameters = Dictionary<String, AnyObject>()
        if imageData {
            parameters["banner"] = imageData!.base64EncodedStringWithOptions(nil)
        }
        if width {
            parameters["width"] = width!
        }
        if height {
            parameters["height"] = height!
        }
        if offsetLeft {
            parameters["offset_left"] = offsetLeft!
        }
        if offsetTop {
            parameters["offset_top"] = offsetTop!
        }

        self.oauthClient.postJSONWithPath(path, baseURL: self.apiURL, parameters: parameters, progress: nil, success: success, failure: failure)
    }

    func getUsersProfileBannerWithUserID(userID: Int, success: SwifterOAuthClient.JSONRequestSuccessHandler?, failure: SwifterHTTPRequest.RequestFailureHandler?) {
        let path = "users/profile_banner.json"

        self.oauthClient.getJSONWithPath(path, baseURL: self.apiURL, parameters: [:], progress: nil, success: success, failure: failure)
    }

}