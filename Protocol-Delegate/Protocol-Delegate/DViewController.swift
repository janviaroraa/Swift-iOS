//
//  DViewController.swift
//  Protocol-Delegate
//
//  Created by Janvi Arora on 28/03/24.
//

import UIKit

protocol DViewControllerDelegate: AnyObject {
    func sendDataToC(data: String)
}

class DViewController: UIViewController {

    weak var delegateD: DViewControllerDelegate?

    private lazy var button: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Send Data", for: .normal)
        btn.backgroundColor = .systemBlue
        btn.layer.cornerRadius = 4
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action: #selector(navigate), for: .touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addViews()
        layoutConstraints()
    }

    private func addViews() {
        view.addSubview(button)
    }

    private func layoutConstraints() {
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 30),
        ])
    }

    @objc private func navigate() {
        delegateD?.sendDataToC(data: "Janvi-Adarsh")
        navigationController?.popToRootViewController(animated: true)
    }
}
