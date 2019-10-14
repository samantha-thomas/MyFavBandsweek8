//
//  DetailViewController.swift
//  MyFavBandsWeek8
//
//  Created by Samantha Thomas on 10/14/19.
//  Copyright © 2019 Samantha Thomas. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{

   // @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var productImageView: UIImageView!
    
    func configureView()
    {
        // Update the user interface for the detail item.
        if detailItem != nil
        {
            //Updated from assignment instructions.
            if let photo = productImageView
            {
                photo.image = UIImage(named:detailItem!)
            }
        }else{
            productImageView.image = UIImage(named:"main.jpg")
            title = "My Bands"
        }
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    //Updated from assignment instructions.
    var detailItem: String?
    {
        didSet
        {
            // Update the view.
            configureView()
        }
    }
}

