//
//  SongCollectionViewCell.swift
//  ItunesApi
//
//  Created by Sehmus GOKCE on 11.05.2020.
//  Copyright © 2020 Sehmus GOKCE. All rights reserved.
//

import UIKit

class MediaCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var lblAlbum: UILabel!
    @IBOutlet weak var imgArtwork: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.borderColor = UIColor.black.withAlphaComponent(0.2).cgColor
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 0.5
        
    }
    
    func bindUIModel(uiModel : MediaUIModel) {

        imgArtwork.image = Constants.Images.CellItemPlaceholder
        
        lblName.text = uiModel.trackName ?? uiModel.collectionName
        lblAlbum.text = uiModel.collectionName
        lblArtist.text = uiModel.artistName
        
        if let artworkUrl = uiModel.artworkUrl {
            imgArtwork.loadImageFromUrl(url: artworkUrl)
        }
        
        if uiModel.isRead {
            lblName.alpha = 0.4
        }
        else
        {
            lblName.alpha = 1
        }
        
    }
    

}
