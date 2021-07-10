//
//  ProfileViewController.swift
//  InstagramLikeApp
//
//  Created by hideto c. on 2021/06/10.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configureNavigationBar()
    }
    
    private func configureNavigationBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"),
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapSttingButton))
    }
    
    @objc private func didTapSttingButton() {
        let vc = SettingViewController()
        vc.title = "Settings"
        navigationController?.pushViewController(vc, animated: true)
    }
}
