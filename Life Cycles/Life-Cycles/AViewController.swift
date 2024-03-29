//
//  ViewController.swift
//  Protocol-Delegate
//
//  Created by Janvi Arora on 28/03/24.
//

import UIKit

class AViewController: UIViewController {

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

    override func loadView() {
        super.loadView()
        print("A - load View")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addViews()
        layoutConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("A - view Will Appear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("A - view Did Appear")
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("A - view Will Layout Subviews")
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("A - view Did Layout Subviews")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("A - view Will Disappear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("A - view Did Disappear")
    }

    private func addViews() {
        view.addSubview(button)
    }

    private func layoutConstraints() {
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 30)
        ])
    }

    @objc private func navigate() {
        let vc = BViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
