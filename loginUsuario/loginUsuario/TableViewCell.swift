//
//  TableViewCell.swift
//  loginUsuario
//
//  Created by user218997 on 4/28/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageUser: UIImageView!
   
    @IBOutlet weak var labelFullName: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelOffice: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
            self.labelFullName.text = AppModel.sharedInstance.sharedArrayName.first
            self.labelAge.text = AppModel.sharedInstance.sharedArrayAge.first ?? "" + " anos"
            self.labelOffice.text = AppModel.sharedInstance.sharedArrayOffice.first
            self.labelEmail.text = AppModel.sharedInstance.sharedArrayEmail.first
        
        /* self.labelOffice.text = AppModel.sharedInstance.sharedArrayOffice.first
        self.labelEmail.text = AppModel.sharedInstance.sharedArrayEmail.first*/
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    

        // Configure the view for the selected state
    }
   
}
