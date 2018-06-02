//
//  score.swift
//  projectMobile
//
//  Created by Eve on 4/3/2560 BE.
//  Copyright © 2560 net.bumail.onmo.praeploy. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

class score{
    let key: String
    var username : String!
    var title : String!
    var score : String!
    var completed: Bool!
    let ref: FIRDatabaseReference!
    init(username: String, title: String, score: String , key: String = "") {
        self.key = key
        self.username = username
        self.title = title
        self.score = score
        self.ref = nil
    }
    init(snapshot: FIRDataSnapshot) {
        key = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        title  = snapshotValue["title"] as! String
        score = snapshotValue["score"] as! String
        username = snapshotValue["username"] as! String
        ref = snapshot.ref
    }
    func toAnyObject() -> Any {
        return [
            "title": title,
            "score": score,
            "username": username
        ]
    }
}



