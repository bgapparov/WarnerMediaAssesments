//
//  Photo.swift
//  WarnerMedia
//
//  Created by Baiaman Gapparov on 10/26/21.
//

import Foundation

struct Photo: Codable, PhotoURL {
    let id, owner, secret, server: String
    let farm: Int
    let title: String
    let ispublic, isfriend, isfamily: Int
}

struct Photos: Codable {
    let photos: PhotosClass
}

struct PhotosClass: Codable {
    let page, pages, perpage: Int
    let total: String
    let photo: [Photo]
}

protocol PhotoURL {}

extension PhotoURL where Self == Photo{
    
    func getImagePath() -> URL?{
        let path = "http://farm\(self.farm).static.flickr.com/\(self.server)/\(self.id)_\(self.secret).jpg"
        return URL(string: path)
    }
    
}
