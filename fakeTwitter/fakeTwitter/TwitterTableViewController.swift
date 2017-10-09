//
//  TwitterTableViewController.swift
//  fakeTwitter
//
//  Created by michael chan on 2017/10/6.
//  Copyright © 2017年 michael chan. All rights reserved.
//

import UIKit

class TwitterTableViewController: UITableViewController {


    let user = ["陈嘉健", "吴泽荣", "darren26", "肥仔"]
    
    let didian = ["广州·大新印记", "佛山·佛山一中", "shenzhen·温暖的家", "株洲·重庆大学"]
    
    let newsdate = ["1 min ago", "2 min ago", "6 min ago", "7 min ago"]
    
    let content = ["《朋友圈》是由帕特·奥康纳执导和主演的爱情片。",
                   "火车南站真的好多人啊！不想回来了！",
                   "所有的一切都是因为衰仔造成的，妈嗨！",
                   "今日继续羽毛球大战 可能是真的太累了 跑不动了"]
    let touxiang = ["http://image.yy.com/yywebalbumbs2bucket/9f3aad40745840329c8a1d892de7a1cb_1480896119949.jpeg",
                    "http://www.ygjj.com/bookpic2/2015-12-05/new537354-20151205091321547817.jpg",
                    "http://img.zcool.cn/community/01fde3588446d2a8012060c857ffe8.jpg@900w_1l_2o_100sh.jpg",
                    "http://diy.qqjay.com/u2/2012/0912/a188c51e5d10d1c61241759ed3c43307.jpg"]
    
    let zhaopian = ["http://d.5857.com/zir_141110/desk_022.jpg",
                    "http://b.hiphotos.baidu.com/image/pic/item/dcc451da81cb39dbbf279a97d9160924aa18300f.jpg",
                    "http://imgsrc.baidu.com/baike/pic/item/a08b87d6277f9e2fd0d268bf1f30e924b999f3a6.jpg",
                    "http://www.chinaispo.com.cn/up/pic/201502/26/20150226952391692272472.jpg"]
    
    var searchText: String? {
        didSet {
            
        }
    }
    
    
    func searchForTweets() {
         
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return user.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Tweet", for: indexPath)
        // Configure the cell...
        if let tweetCell = cell as? NewsTableViewCell {
            tweetCell.profile = touxiang[indexPath.row]
            tweetCell.img = zhaopian[indexPath.row]
            tweetCell.content = content[indexPath.row]
            tweetCell.time = newsdate[indexPath.row]
            tweetCell.locate = didian[indexPath.row]
            tweetCell.user = user[indexPath.row]
        }
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
