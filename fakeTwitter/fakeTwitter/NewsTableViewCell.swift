//
//  NewsTableViewCell.swift
//  fakeTwitter
//
//  Created by michael chan on 2017/10/6.
//  Copyright © 2017年 michael chan. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

   
    @IBOutlet weak var profilePic: UIImageView!
    
    @IBOutlet weak var username: UILabel!
    
    @IBOutlet weak var tweetContent: UILabel!
    
    @IBOutlet weak var tweetImage: UIImageView!
    
    @IBOutlet weak var location: UILabel!
    
    @IBOutlet weak var timeStamp: UILabel!
    
    var profile: String? {
        didSet {
            profilePic.image = fetchImage(url: URL(string: profile!)!)
        }
    }
    var user: String? {
        didSet {
            username.text = user
        }
    }
    var content: String? {
        didSet {
            tweetContent.text = content!
        }
    }
    var img: String? {
        didSet {
            tweetImage.image = fetchImage(url: URL(string: img!)!)
        }
    }
    
    var locate: String? {
        didSet {
            location.text = locate
        }
    }
    
    var time: String? {
        didSet {
            timeStamp.text = time
        }
    }
    
    private func fetchImage(url: URL)->UIImage?{
                let imageData = try! Data(contentsOf: url)
                return UIImage(data: imageData)
    }
}
