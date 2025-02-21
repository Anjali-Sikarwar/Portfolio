//
//  TestTableViewCell.swift
//  Portfolio
//
//  Created by Anjali Sikarwar on 21/02/25.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    @IBOutlet weak var nameOtherLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var outerView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
