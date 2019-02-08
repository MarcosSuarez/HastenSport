//
//  PlayerTableViewCell.swift
//  HastenSport
//
//  Created by Marcos Suarez on 07/02/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import UIKit
import SDWebImage

class PlayerTableViewCell: UITableViewCell {

    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelSurname: UILabel!
    @IBOutlet weak var labelBirthday: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setPhoto(path: String) {
        guard let url = URL(string: path) else { return }
        DispatchQueue.main.async {
            self.photoView.sd_setImage(with: url)
        }
    }
}
