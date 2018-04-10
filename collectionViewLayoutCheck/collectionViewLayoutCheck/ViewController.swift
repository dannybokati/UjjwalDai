//
//  ViewController.swift
//  collectionViewLayoutCheck
//
//  Created by Danny Bokati on 4/9/18.
//  Copyright © 2018 Gtech Developeres. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    


    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        // Do any additional setup after loading the view, typically from a nib.
        
         let collectionViewFlowLayout = UICollectionViewFlowLayout()
        collectionView?.setCollectionViewLayout(collectionViewFlowLayout, animated: true)
        collectionViewFlowLayout.scrollDirection = .vertical
        
    }
    override func viewWillLayoutSubviews() {
        collectionView.collectionViewLayout.invalidateLayout()
        collectionView.reloadData()
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width, height: view.frame.size.width / 3 )
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        cell.backgroundColor = UIColor.purple
        return cell
    }
    
    
}

