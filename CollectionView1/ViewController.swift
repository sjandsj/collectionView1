//
//  ViewController.swift
//  CollectionView1
//
//  Created by mac on 31/05/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var watch = ["Watch 1","Watch 2","Watch 3","Watch 4","Watch 5","Watch 6","Watch 7","Watch 8","Watch 9","Watch 10","Watch 11","Watch 12","Watch 13","Watch 14","Watch 15","Watch 16","Watch 17","Watch 18","Watch 19","Watch 20",]
    var img = [#imageLiteral(resourceName: "watch4"),#imageLiteral(resourceName: "watch8"),#imageLiteral(resourceName: "watch7"),#imageLiteral(resourceName: "watch10"),#imageLiteral(resourceName: "watch9"),#imageLiteral(resourceName: "watch6"),#imageLiteral(resourceName: "watch5"),#imageLiteral(resourceName: "watch3") ,#imageLiteral(resourceName: "watch4"),#imageLiteral(resourceName: "watch8"),#imageLiteral(resourceName: "watch7"),#imageLiteral(resourceName: "watch10"),#imageLiteral(resourceName: "watch9"),#imageLiteral(resourceName: "watch6"),#imageLiteral(resourceName: "watch5"),#imageLiteral(resourceName: "watch4"),#imageLiteral(resourceName: "watch8"),#imageLiteral(resourceName: "watch7"),#imageLiteral(resourceName: "watch10"),#imageLiteral(resourceName: "watch9")]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return watch.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.image.image = img[indexPath.row]
        cell.label.text = watch[indexPath.row]
        return cell
    }
    
    
    
}

