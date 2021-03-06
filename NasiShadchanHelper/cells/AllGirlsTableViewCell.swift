//
//  AllGirlsTableViewCell.swift
//  NasiShadchanHelper
//
//  Created by username on 1/12/21.
//  Copyright © 2021 user. All rights reserved.
//

import UIKit

class AllGirlsTableViewCell: UITableViewCell {

    @IBOutlet weak var nameTextLabel: UILabel!
    
    @IBOutlet weak var heightAndAgeLabel: UILabel!
    
    
    @IBOutlet weak var cityAndSeminaryLabel: UILabel!
    
    @IBOutlet weak var categoryCodeLabel: UILabel!
    
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.contentMode = .scaleAspectFit
        profileImageView.layer.cornerRadius = 8.0
        profileImageView.clipsToBounds = true 
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCellForGirl(girl: NasiGirl) {
 nameTextLabel.text = girl.nameSheIsCalledOrKnownBy + " " + girl.lastNameOfGirl
heightAndAgeLabel.text = "\(girl.age) " + "\(girl.seminaryName)"
"\(girl.heightInFeet)-Ft" + "\(girl.heightInInches)-Inches"
 cityAndSeminaryLabel.text =
 "\(girl.cityOfResidence) "

 categoryCodeLabel.text = girl.category
    
        
        
    }

}
