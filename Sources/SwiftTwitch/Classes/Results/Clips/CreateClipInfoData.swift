//
//  CreateClipInfoData.swift
//  SwiftTwitch
//
//  Created by Christopher Perkins on 12/29/18.
//

import Foundation
import Marshal

/// `CreateClipInfoData` is a class that encapsulates all of the information of a single returned
/// clip from the returned array of Clip data from the New Twitch API's `Create Clip` call.
public struct CreateClipInfoData: Unmarshaling {
    
    /// `id` specifies the ID of the clip that was created.
    public let id: String
    
    /// `editURL` specifies the URL of the clip that was created. This URL can be used to edit the
    /// clip.
    public let editURL: String
    
    /// Initializes a `CreateClipInfoData` object from the input `MarshaledObject`. This will throw
    /// if there is missing data from the input `MarshaledObject`.
    ///
    /// - Parameter object: The object to initialize a `CreateClipInfoData` piece from
    /// - Throws: If data is missing that was expected to be non-`nil`.
    public init(object: MarshaledObject) throws {
        id = try object.value(for: Twitch.WebRequestKeys.id)
        editURL = try object.value(for: Twitch.WebRequestKeys.editURL)
    }
}

