//
//  ViewController.swift
//  ProjectFive
//
//  Created by angel zambrano on 01/24/22.
//

import UIKit





class ViewController: UIViewController {
    
    // views
    private var filtCollectionView: UICollectionView! // the filter collection view


    // data
    
    
    
    
    let values = ["iOS",  "Android", "Design", "coffee", "mug", "electric", "speed"]
    
    // Constants for the filter collection view
    private let filtCellReuseIdentifier = "colorCellReuseIdentifier"
    
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
   
//        // set up the filtCollectionView
        // TODO 2: Setup flow layout
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layout.invalidateLayout()
        layout.sectionInset = .init(top: 0, left: 16, bottom: 0, right: 16)
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 20
      
        // adding a title to the navigation bar
        self.navigationItem.title = "collectionviews"
        
        
        // TODO 1: Instantiate collectionView
        filtCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        filtCollectionView.translatesAutoresizingMaskIntoConstraints = false
        filtCollectionView.backgroundColor = .clear


        
        // TODO 3: Create collection view cell and register it here.
        // TODO 3a: Add content to collection view cell.
        // TODO 3b: Create function to configure collection view cell.
        filtCollectionView.register(FilterCollectionViewCell.self, forCellWithReuseIdentifier: filtCellReuseIdentifier)
   
        

//        // TODO 4: Extend collection view data source.
        filtCollectionView.dataSource = self
        
//
        // TODO 5: Extend collection view delegate.
        filtCollectionView.delegate = self

//
        view.addSubview(filtCollectionView)
        
        setupConstraints()
    }
    
    
    // sets up the constraints for the collectionViews
    func setupConstraints() {
        NSLayoutConstraint.activate([
            filtCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            filtCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            filtCollectionView.heightAnchor.constraint(equalToConstant: 60),
            filtCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
    }
    

}




extension ViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
            return values.count
        
        
        // returns the number of
        
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: filtCellReuseIdentifier, for: indexPath) as! FilterCollectionViewCell
            
            cell.conf(str: values[indexPath.item])
            return cell
        
    }
    
    

}

//extension ViewController: UICollectionViewDelegate {}



    // allows the user to select
extension ViewController: UICollectionViewDelegate {
    
    
    // TODO 9: provide selection functionality
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//        // select the correct collection view
//            filters.forEach({$0.selected = false}) // deselects
//
//            filters[indexPath.item].selected = !filters[indexPath.item].selected
//
//
//
//
//            collectionView.reloadData()
//
//
//    }
}


