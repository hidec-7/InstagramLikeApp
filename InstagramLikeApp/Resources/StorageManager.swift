//
//  StorageManager.swift
//  InstagramLikeApp
//
//  Created by hideto c. on 2021/06/10.
//

import FirebaseStorage

public class StorageManager {
    
    static let shared = StorageManager()
    
    private let buket = Storage.storage().reference()
    
    public enum IGStorageManagerError: Error {
        case failedDownload
    }
    
    // MARK: - Public
    
    public func uploadUserPost(model: UserPost, completion: @escaping (Result<URL, Error>) -> Void) {
        
    }
    
    public func downloadImage(with reference: String, completion: @escaping (Result<URL, IGStorageManagerError>) -> Void) {
        buket.child(reference).downloadURL { url, error in
            guard let url = url, error == nil else {
                completion(.failure(.failedDownload))
                return
            }
            completion(.success(url))
        }
    }
    
}

public enum UserPostType {
    case photo, video
}

public struct UserPost {
    let postType: UserPostType
}
