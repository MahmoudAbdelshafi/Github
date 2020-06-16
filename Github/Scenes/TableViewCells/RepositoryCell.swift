//
//  UserCell.swift
//  Github
//
//  Created by Mahmoud on 6/14/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

class RepositoryCell: UITableViewCell,RepositoryCellView {
    
    //MARK:- IBOutlet
    
    @IBOutlet private weak var repoNameLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var languageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
   
    func displayRepoName(name: String) {
        repoNameLabel.text = name
    }
    
    func displayRepoDescription(description: String) {
        descriptionLabel.text = description
    }
    
    func displayRepoLanguage(language: String) {
        languageLabel.text = language
    }
    
}
