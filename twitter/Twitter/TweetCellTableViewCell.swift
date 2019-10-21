//
//  TweetCellTableViewCell.swift
//  Twitter
//
//  Created by Cean Manzano on 9/30/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class TweetCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var tweetContent: UILabel!
    
    @IBOutlet weak var retweetButton: UIButton!
    

    @IBOutlet weak var favButton: UIButton!
    
    var favorited:Bool = false
    var tweetId:Int = -1
    
    @IBAction func favoriteTweet(_ sender: Any) {
        print("yoo")
    }
    
//        print("Hello")
//        let toBeFavorited = !favorited
//        if (toBeFavorited) {
//            TwitterAPICaller.client?.favoriteTweet(tweetId: tweetId, success: {
//                self.setFavorite(true)
//            }, failure: { (error) in
//                print("Favorite did not succeed \(error)")
//            })
//        }
//        else {
//            TwitterAPICaller.client?.unfavoriteTweet(tweetId: tweetId, success: {
//                self.setFavorite(false)
//            }, failure: { (error) in
//                print("Unfavorite did not succeed \(error)")
//            })
//        }

    
    
    @IBAction func retweet(_ sender: Any) {
    }
    
    func setFavorite(_ isFavorited: Bool) {
        favorited = isFavorited
        if (favorited) {
            favButton.setImage(UIImage(named:"favor-icon-red"), for: UIControl.State.normal)
        }
        else {
            favButton.setImage(UIImage(named:"favor-icon"), for: UIControl.State.normal)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
