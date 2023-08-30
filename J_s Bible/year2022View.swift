//
//  year2022View.swift
//  J's Bible
//
//  Created by Yuchi Shi on 8/25/23.
//

import SwiftUI

class year2022View: UITableViewController{
    
    var phrase2022 : [String] = ["发了个发了个follow up", "名副实其", "Bos顿", "打价", "杯za", "简胆的", "饿死在家边", "盲子", "脱脚(鞋)"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightText
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phrase2022.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = phrase2022[indexPath.row]
        return cell
    }
   
}
