//
//  ViewCards.swift
//  loginUsuario
//
//  Created by user218997 on 4/28/22.
//

import UIKit

class ViewCards: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
   // var tableviewcell = TableViewCell()
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        self.myTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        AppModel.sharedInstance.sharedArrayPassword.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let viewCell: TableViewCell? = myTableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        return viewCell ?? UITableViewCell()
        
    }
    
}
