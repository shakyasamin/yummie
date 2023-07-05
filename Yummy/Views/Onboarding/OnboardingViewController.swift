//
//  OnboardingViewController.swift
//  Yummy
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 05/07/2023.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    

    @IBOutlet var CollectionView: UICollectionView!
    
    @IBOutlet var pageControl: UIPageControl!
    
    @IBOutlet var nextButton: UIButton!
    
    var slides: [OnboardingSlide] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = [
            OnboardingSlide(title: "Delicious Dishes", description: "Experience a variety of amazing dishes from different cultures around the world", image: UIImage(named: "slide1")!),
            OnboardingSlide(title: "World-Class Chefs", description: "Our dishes are prepared by only the best", image:UIImage(named: "slide2")! ),
            OnboardingSlide(title: "Instant World-Wide Delivery", description: "Your orders will be delivered instantly irrespective of your location around the world", image: UIImage(named: "slide3")!)

        ]
                            
        CollectionView.delegate = self
        CollectionView.dataSource = self
                            
                            
                            
        }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        
    }
    
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        
        cell.setup(slides[indexPath.row])
        
        return cell
 
    }
    
    
}
