//
//  CollectionViewTableViewCell.swift
//  FitnessApp
//
//  Created by Lochana Rathnayaka on 2023-05-19.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {
    
    static let identifier = "CollectionViewTableViewCell"
    
    var logoImages: [UIImage] = []
   
    
    private let collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 140, height: 200)
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return collectionView
    }()
     
     override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
         contentView.backgroundColor = .systemPink
         contentView.addSubview(collectionView)
         
         collectionView.delegate = self
         collectionView.dataSource = self
         
         logoImages.append(UIImage(named: "young-fitness")!)
         logoImages.append(UIImage(named: "strengthTraining")!)
         logoImages.append(UIImage(named: "fitness-man")!)
         logoImages.append(UIImage(named: "Mind-BodyExercises")!)
         logoImages.append(UIImage(named: "gymfitness")!)
         
     }
     
     required init?(coder: NSCoder){
         fatalError()
     }
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
    }
}

extension  CollectionViewTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        var imageview:UIImageView=UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 230));
        var img : UIImage = logoImages[indexPath.row]
        imageview.image = img
        imageview.contentMode = .scaleToFill
        cell.contentView.addSubview(imageview)
        return cell
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return logoImages.count
    }
    
     
}

