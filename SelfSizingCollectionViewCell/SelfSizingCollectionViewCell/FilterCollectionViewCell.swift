//
//  FilterCollectionViewCell.swift
//  ProjectFive
//
//  Created by angel zambrano on 11/21/21.
//

import UIKit

class FilterCollectionViewCell: UICollectionViewCell {
    private var filtLabel: UILabel = UILabel()
    private var imageView: UIImageView = UIImageView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        filtLabel.translatesAutoresizingMaskIntoConstraints = false
        filtLabel.font = UIFont.systemFont(ofSize: 12)
        filtLabel.textColor = .black
        filtLabel.text = "WEED"
        contentView.addSubview(filtLabel)
        
        contentView.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1)
    
        contentView.layer.cornerRadius = 12
        
        // adding the subview
        imageView.image = UIImage(named: "close-4")!
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(imageView)
        
        
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpConstraints() {
       
        NSLayoutConstraint.activate([
            filtLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            filtLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            filtLabel.trailingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: -8),
            filtLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
        ])
        
    
        
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 10),
            imageView.heightAnchor.constraint(equalToConstant: 10),
            imageView.centerYAnchor.constraint(equalTo: filtLabel.centerYAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8)
        ])

        
        
    }
    
    func conf(str: String) {
        filtLabel.text = str

    }
    
 
    
    
    
}
