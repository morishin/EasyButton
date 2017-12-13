import UIKit
import PlaygroundSupport
import EasyButton

class ViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        // Set a darker color than the background color to the highlighted background color automatically
        let lightColorButton = UIButton.button(title: "Hello World", titleColor: .white, backgroundColor: .orange, cornerRadius: 6)

        // Set a lighter color than the background color to the highlighted background color automatically
        let darkColorButton = UIButton.button(title: "Hello World", titleColor: .white, backgroundColor: .darkGray, cornerRadius: 6)

        view.addSubview(lightColorButton)
        lightColorButton.translatesAutoresizingMaskIntoConstraints = false
        lightColorButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        lightColorButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        lightColorButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lightColorButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true

        view.addSubview(darkColorButton)
        darkColorButton.translatesAutoresizingMaskIntoConstraints = false
        darkColorButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        darkColorButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        darkColorButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        darkColorButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true

        self.view = view
    }
}

PlaygroundPage.current.liveView = ViewController()
