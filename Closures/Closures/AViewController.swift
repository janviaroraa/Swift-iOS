//
//  ViewController.swift
//  Protocol-Delegate
//
//  Created by Janvi Arora on 28/03/24.
//

import UIKit

class AViewController: UIViewController {

    private lazy var label: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "No text assigned yet!"
        lbl.textColor = .black
        lbl.textAlignment = .center
        lbl.font = UIFont(name: "Arial", size: 20)
        return lbl
    }()

    private lazy var button: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Navigate to B", for: .normal)
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
        view.addSubview(label)
        view.addSubview(button)
    }

    private func layoutConstraints() {
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 30),

            label.topAnchor.constraint(equalTo: button.topAnchor, constant: -60),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            label.heightAnchor.constraint(equalToConstant: 30)
        ])
    }

    @objc private func navigate() {
        let vc = BViewController()
        vc.sendDataToA = { [weak self] data in
            self?.label.text = data
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}
