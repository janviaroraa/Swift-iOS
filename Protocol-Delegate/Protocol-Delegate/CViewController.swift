//
//  CViewController.swift
//  Protocol-Delegate
//
//  Created by Janvi Arora on 28/03/24.
//

import UIKit

protocol CViewControllerDelegate: AnyObject {
    func sendDataToB(data: String)
}

class CViewController: UIViewController {

    weak var delegateC: CViewControllerDelegate?

    private lazy var button: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Navigate to D", for: .normal)
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
        let vc = DViewController()
        vc.delegateD = self
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension CViewController: DViewControllerDelegate {
    func sendDataToC(data: String) {
        delegateC?.sendDataToB(data: data)
    }
}
