//
//  before2022View.swift
//  J's Bible
//
//  Created by Yuchi Shi on 8/24/23.
//

import SwiftUI

class before2022View: UITableViewController{
    
    var phraseBefore2022 : [String] = ["战完 战玩儿", "瓦斯球", "Cheeseburger factory", "Zaza", "小脚的温饱", "做月-孕", "老万", "粉翠三角龙","是灭", "狗地人占卜师", "离异的死亡了", "买一呆", "噶了吗", "虫超dps", "二十发cens", "金六福的戒指", "阿斯迪马丁", "去家门邮箱check email", "我就对你一个人流狼", "你桥逮也是", "炸酱，炸酱，炸件儿", "耶我好厉丝-", "大叉（大裤衩)", "我很看你穿不惯这一身", "咬文嚼jue字", "打扫除", "有没有大A（倒A大头）", "我在纽腰", "艺伎是唱舞跳歌的吗", "木吉他弹的还挺好喝的", "费大力", "微波驴", "运动坛", "王老吉牌臭豆腐", "电子照相机", "江洋大豆", "意外之中", "打阿嚏", "乐（le）团", "机械鼠标", "达美乐pi（三声）za（四声）", "磨砂鸡", "彩电"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phraseBefore2022.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = phraseBefore2022[indexPath.row]
        return cell
    }
   
}



