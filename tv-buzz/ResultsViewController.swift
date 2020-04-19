//
//  Created by Joh Robbins on 10/4/20.
//  Copyright © 2020 Joh Robbins. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet private var imageView: UIImageView!
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var descriptionLabel: UILabel!

    public var result: Result?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateUI()
    }

    func updateUI() {
        guard let result = result else { return }

        imageView.image = UIImage(named: result.imageID)
        titleLabel.text = result.name
        descriptionLabel.text = result.description
    }
}
