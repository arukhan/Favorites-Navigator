import UIKit

final class DetailViewController: UIViewController {
    var item: FavoriteItem?
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet var starViews: [UIImageView]!

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let item = item else { return }
        title = item.title
        navigationItem.largeTitleDisplayMode = .never
        posterImageView.image = UIImage(named: item.imageName)
        titleLabel.text = item.title
        subtitleLabel.text = item.subtitle
        descriptionLabel.text = item.description
        for (index, star) in starViews.enumerated() {
            star.image = UIImage(systemName: index < item.rating ? "star.fill" : "star")
            star.tintColor = index < item.rating ? .systemYellow : .systemGray3
        }
    }
}
