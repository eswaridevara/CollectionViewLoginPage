//
//  SeViewController.swift
//  CollectionViewCell
//
//  Created by user205563 on 11/21/21.
//

import UIKit

class SeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
    }
    
    private  func configureCollectionView() {    
        for identifier in [FirstCell.identifier, ThirdCell.identifier, FourthCell.identifier, FifthCell.identifier, SixthCell.identifier] {
            collectionView.register(UINib(nibName: identifier, bundle: nil), forCellWithReuseIdentifier: identifier)
            
        }
/*       collectionView.register(UINib(nibName: FirstCell.identifier, bundle: nil), forCellWithReuseIdentifier: FirstCell.identifier)
       collectionView.register(UINib(nibName: FourthCell.identifier, bundle: nil), forCellWithReuseIdentifier: FourthCell.identifier)
       collectionView.register(UINib(nibName: ThirdCell.identifier, bundle: nil), forCellWithReuseIdentifier: ThirdCell.identifier)
       collectionView.register(UINib(nibName: FifthCell.identifier, bundle: nil), forCellWithReuseIdentifier: FifthCell.identifier) */
          
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension SeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0, let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstCell.identifier, for: indexPath) as? FirstCell {
        return cell
    } else
        if indexPath.item == 1, let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThirdCell.identifier, for: indexPath) as? ThirdCell {
        return cell
    } else
        if indexPath.item == 2, let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FourthCell.identifier, for:
            indexPath) as? FourthCell {
        return cell
    } else
        if indexPath.item == 3, let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FifthCell.identifier, for: indexPath) as? FifthCell {
        return cell
    } else
        if indexPath.item == 4, let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SixthCell.identifier, for: indexPath) as? SixthCell {
        return cell
    }
        
        return UICollectionViewCell()

    }
   
   
    func collectionView( collectionView: UICollectionView, heightforitemAt indexPath: IndexPath) -> CGFloat {
        let cellHeight: CGFloat = indexPath.item == 0 ? 290 : indexPath.item == 1 ? 100 : indexPath.item == 2 ? 100 : indexPath.item  == 3 ? 300 : indexPath.item == 4 ? 250 : 0
        return cellHeight
    }
}

extension SeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width
        let cellHeight: CGFloat = indexPath.item == 0 ? 290 : indexPath.item == 1 ? 100 : indexPath.item == 2 ? 100 : indexPath.item  == 3 ? 300 : indexPath.item == 4 ? 250 : 0
        return CGSize(width: width, height: cellHeight)
    }
    
    
}
