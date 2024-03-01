
import UIKit

final class ProfileViewController: UIViewController {
    //MARK: elementsView
    private let profileImageView: UIImageView = {
        let profilePhoto = UIImage(systemName: "person.crop.circle.fill")
        let imageView = UIImageView(image: profilePhoto)
        imageView.tintColor = .ypWhite1
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        let bold: Bool = true
        let fontSize = 23.0
        let color: UIColor = .ypWhite
        let textLabel: String = "Бугаков Сергей"
        
        label.text = "\(textLabel)"
        label.font = UIFont.boldSystemFont(ofSize:fontSize)
        label.textColor = color
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        let bold: Bool = false
        let fontSize = 13.0
        let color: UIColor = .ypGray
        let textLabel: String = "@bugass"
        
        label.text = "\(textLabel)"
        label.font = UIFont.systemFont(ofSize: fontSize)
        label.textColor = color
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let statusLabel: UILabel = {
        let label = UILabel()
        let bold: Bool = true
        let fontSize = 13.0
        let color: UIColor = .ypWhite
        let textLabel: String = "hello world!"
        
        label.text = "\(textLabel)"
        label.font = UIFont.systemFont(ofSize: fontSize)
        label.textColor = color
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let logOutButton: UIButton = {
        let button = UIButton.systemButton(
            with: UIImage(systemName: "ipad.and.arrow.forward")!,
            target: self,
            action: #selector(Self.logOut)
        )
        button.tintColor = .ypRed1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        setupConstraints()
    }
    
    private func addSubViews() {
        view.addSubview(profileImageView)
        view.addSubview(nameLabel)
        view.addSubview(emailLabel)
        view.addSubview(statusLabel)
        view.addSubview(logOutButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            profileImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            profileImageView.widthAnchor.constraint(equalToConstant: 70),
            profileImageView.heightAnchor.constraint(equalToConstant: 70),
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            emailLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 138),
            emailLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            statusLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 166),
            statusLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            logOutButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            logOutButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 45)])
    }
        
    @objc
    private func logOut() {
        print("User Log Out!")
    }
}
