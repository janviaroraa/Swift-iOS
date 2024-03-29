//
//  BViewController.swift
//  Protocol-Delegate
//
//  Created by Janvi Arora on 28/03/24.
//

import UIKit

class BViewController: UIViewController {

    override func loadView() {
        super.loadView()
        print("B - load View")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("B - view Will Appear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("B - view Did Appear")
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("B - view Will Layout Subviews")
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("B - view Did Layout Subviews")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("B - view Will Disappear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("B - view Did Disappear")
    }
}
