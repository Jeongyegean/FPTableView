//
//  FPTableViewController.swift
//  FPTableView
//
//  Created by 정예진 on 2020/04/06.
//

//import UIKit
//
//struct Devices: Codable {
//    let code_yn: String?
//    let content: String?
//    let date: String?
//    let image_yn: String?
//    let imgUrl: String?
//    let lcode: String?
//    let link: String?
//    let mode: String?
//    let msgTag: String?
//    let opened: String?
//    let title: String?
//    let type: String?
//}
//
//class FPTableViewController: UITableViewController {
//    
//    var contents: Array<Devices>?
//    var refreshController : UIRefreshControl = UIRefreshControl()
//    let activityIndicatorView:UIActivityIndicatorView = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.gray)
//    let lbNoti = UILabel()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        //navigationbar 타이틀
//        self.title = "알림"
//        
//        self.tableView.tableFooterView = UIView()
//        
//        //refresh control
////        refreshControl()
//        
//        //activityIndicator
//        tableView.backgroundView = activityIndicatorView
//        activityIndicatorView.frame = tableView.frame
//        activityIndicatorView.hidesWhenStopped = true
//        activityIndicatorView.startAnimating()
//        
//        //푸시 알림 리스트 보여주기
////        requestPushList()
//        
//        //알림메시지 없을 때 라벨메시지 보여주기
//        lbNoti.frame = tableView.frame
//        lbNoti.textAlignment = .center
//
//        // Uncomment the following line to preserve selection between presentations
//        // self.clearsSelectionOnViewWillAppear = false
//
//        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        // self.navigationItem.rightBarButtonItem = self.editButtonItem
//    }
//    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        
//        self.navigationController?.setNavigationBarHidden(false, animated: animated)
//        self.navigationController?.setToolbarHidden(true, animated: animated)
//    }
//
//    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return contents?.count ?? 0
//        
//    }
//
//    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Notice", for: indexPath) as! FPTableViewCell
//        
//        let item = contents?[indexPath.row]
//        
//        //날짜
//        let strDate = item?.date
//        let dateFormatter = DateFormatter()
//        
//        dateFormatter.dateFormat = "yyyyMMddHHmmss"
//        let date = dateFormatter.date(from: strDate!)!
//        
//        dateFormatter.dateFormat = "yyyy.MM.dd"
//        let chgStrDate = dateFormatter.string(from: date)
//        
//        cell.date.text = chgStrDate
//        
//        //제목
//        cell.title.text = item?.title
//        
//        //내용
//        cell.content.text = item?.content
//        
//        //이미지
//        let pushImgUrlStr = item?.imgUrl
//        cell.img.image = UIImage()
//        
//        if let url = URL(string: pushImgUrlStr!){
//            URLSession.shared.dataTask(with: url) {data, response, error in guard error == nil else{
//                return
//                }
//                DispatchQueue.main.async {
//                    let data = try? Data(contentsOf: url)
//                    if let imgdata = data{
//                        let imgView2 = UIImage(data: imgdata)
//
//                        cell.img.image = imgView2
//                    }
//                }
//            }.resume()
//        }
//
//        // Configure the cell...
//
//        return cell
//    }
//    
//
//    /*
//    // Override to support conditional editing of the table view.
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the specified item to be editable.
//        return true
//    }
//    */
//
//    /*
//    // Override to support editing the table view.
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            // Delete the row from the data source
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        } else if editingStyle == .insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }    
//    }
//    */
//
//    /*
//    // Override to support rearranging the table view.
//    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//
//    }
//    */
//
//    /*
//    // Override to support conditional rearranging of the table view.
//    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the item to be re-orderable.
//        return true
//    }
//    */
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
