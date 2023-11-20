//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Дмитрий Бучнев on 16.11.2023.
//

import Foundation
import UIKit

final class ProfileViewController: UIViewController {
    private var avatarViewImage: UIImageView!
    private var descriptionLable: UILabel!
    private var loginNameLable: UILabel!
    private var nameLable: UILabel!
    private var buttonExit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAvatar()
        createLabelsAndSettingsFontSize()
        createButton()
        addConstraints()
    }
    
    @objc
    func touchExit(_ sender: Any) {
        
    }
    
    func createAvatar() {
        let image = UIImage(named: "Photo")
        avatarViewImage = UIImageView(image: image)
        avatarViewImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(avatarViewImage)
    }
    
    func createLabelsAndSettingsFontSize() {
        descriptionLable = UILabel()
        loginNameLable = UILabel()
        nameLable = UILabel()
        nameLable.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        nameLable.textColor = UIColor(named: "YP White")
        nameLable.text = "Екатерина Новикова"
        loginNameLable.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        loginNameLable.textColor = UIColor(named: "YP Gray")
        loginNameLable.text = "@ekaterina_nov"
        descriptionLable.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        descriptionLable.textColor = UIColor(named: "YP White")
        descriptionLable.text = "Hello, world!"
        descriptionLable.translatesAutoresizingMaskIntoConstraints = false
        nameLable.translatesAutoresizingMaskIntoConstraints = false
        loginNameLable.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(descriptionLable)
        view.addSubview(loginNameLable)
        view.addSubview(nameLable)
    }
    
    func createButton() {
        buttonExit = UIButton.systemButton(with: UIImage(named: "exitButton")!, target: self, action: #selector(Self.touchExit))
        buttonExit.tintColor = UIColor(named: "YP Red")
        buttonExit.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonExit)
    }
    
    func addConstraints () {
        NSLayoutConstraint.activate([
            avatarViewImage.widthAnchor.constraint(equalToConstant: 70),
            avatarViewImage.heightAnchor.constraint(equalToConstant: 70),
            avatarViewImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            avatarViewImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            buttonExit.widthAnchor.constraint(equalToConstant: 44),
            buttonExit.heightAnchor.constraint(equalToConstant: 44),
            buttonExit.centerYAnchor.constraint(equalTo: avatarViewImage.centerYAnchor),
            buttonExit.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            nameLable.topAnchor.constraint(equalTo: avatarViewImage.bottomAnchor, constant: 8),
            nameLable.leadingAnchor.constraint(equalTo: avatarViewImage.leadingAnchor),
            loginNameLable.topAnchor.constraint(equalTo: nameLable.bottomAnchor, constant: 8),
            loginNameLable.leadingAnchor.constraint(equalTo: avatarViewImage.leadingAnchor),
            descriptionLable.topAnchor.constraint(equalTo: loginNameLable.bottomAnchor, constant: 8),
            descriptionLable.leadingAnchor.constraint(equalTo: avatarViewImage.leadingAnchor)
        ])
    }
}
