
import UIKit

final class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createProfilePhoto()
        createLabel(textLabel: "Бугаков Сергей", fontSize: 23, bold: true, constant: 100, color: .ypWhite)
        createLabel(textLabel: "@BugaSS", fontSize: 13, bold: false, constant: 138, color: .ypGray)
        createLabel(textLabel: "Hello World!", fontSize: 13, bold: false, constant: 166, color: .ypWhite)
        createButton(constant: 45)
    }
    
    func createProfilePhoto() {
        let profilePhoto = UIImage(systemName: "person.crop.circle.fill")
        let imageView = UIImageView(image: profilePhoto)
        imageView.tintColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
    }
    
    func createLabel (textLabel: String, fontSize: Double, bold: Bool, constant: Double, color: UIColor) {
        let label = UILabel()
        label.text = "\(textLabel)"
        if bold {
            label.font = UIFont.boldSystemFont(ofSize:fontSize)
        } else {
            label.font = UIFont.systemFont(ofSize: fontSize)
        }
        label.textColor = color
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: constant).isActive = true
        label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
    }
    
    func createButton (constant: Double) {
        let button = UIButton.systemButton(
            with: UIImage(systemName: "ipad.and.arrow.forward")!,
            target: self,
            action: #selector(Self.logOut)
        )
        button.tintColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: constant).isActive = true
    }
    
    @objc
    private func logOut() {
        print("User Log Out!")
    }
}
