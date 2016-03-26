//
//  MessageCell.swift
//  Megaphone
//
//  Created by denis lavrov on 26/03/16.
//  Copyright © 2016 bahus. All rights reserved.
//

import UIKit

@IBDesignable
class MessageCell: UITableViewCell {
	@IBOutlet weak var shortText: UILabel!
	@IBOutlet weak var channelIcon: UIImageView!
	@IBOutlet weak var channelName: UILabel!
	

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
