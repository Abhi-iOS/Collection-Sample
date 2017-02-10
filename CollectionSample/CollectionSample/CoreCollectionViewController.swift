//
//  CoreCollectionViewController.swift
//  CollectionSample
//
//  Created by Appinventiv on 10/02/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import UIKit

//MARK: CoreCollectionViewController class that is sample example of collection view
class CoreCollectionViewController: UIViewController {

    @IBOutlet weak var coreCollection: UICollectionView!
    
    //MARK : View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        coreCollection.dataSource = self
        coreCollection.delegate = self
        
        //Nib Registeration
        let cellNib = UINib(nibName: "CollectionItem", bundle: nil)
        coreCollection.register(cellNib, forCellWithReuseIdentifier: "CollectionItemID")
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize(width: 100, height: 100)
        flowLayout.minimumLineSpacing = 2
        flowLayout.minimumInteritemSpacing = 2
        coreCollection.collectionViewLayout = flowLayout
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CoreCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        
        return 50
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionItemID", for: indexPath)
        
        return cell
    }

    
}
