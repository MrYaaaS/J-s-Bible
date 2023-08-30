//
//  year2023View.swift
//  J's Bible
//
//  Created by Yuchi Shi on 8/25/23.
//

import SwiftUI

class year2023View: UITableViewController{
    
    var phrase2023 : [String] = ["zha(攒)的住吗", "究极计划", "nuai头", "mian馒头 （二声)", "给你弄个make ma(make-up)", "杨戟（杨戬)", "酸豆甲(酸豆角)", "屁股切成细细的小（四声）子（臊子）", "肖战<小詹>", "他爸爸会说话了吗（儿子不会说话）", "冻僵皇(豆浆皇)", "脚(鸡 一 奥)", "制自", "最近有点pian逆（叛逆）", "五留(五楼)", "机械站盘展（机械键盘）", "麻辣烫 包", "过坐山车"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cyan
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phrase2023.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = phrase2023[indexPath.row]
        return cell
    }
   
}
