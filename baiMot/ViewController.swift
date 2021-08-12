//
//  ViewController.swift
//  baiMot
//
//  Created by Lê Hoàng Chương on 02/08/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var imgageVewi: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "imgapp")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    var bigDescriptionTop: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Cooking At Home"
        lbl.font = UIFont(name: "Bodoni 72", size: 30)
        return lbl
    }()
    
    var bigDescriptionTBot: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "With a Private Chef"
        lbl.font = UIFont(name: "Bodoni 72", size: 30)
        return lbl
    }()
    
    var smallDescription: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
        lbl.font = UIFont(name: "Bodoni 72", size: 20)
        lbl.numberOfLines = 0
        lbl.textColor = .gray
        return lbl
    }()
    
    var registerButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Register", for: UIControl.State.normal)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.backgroundColor = .orange
        button.addTarget(self, action: #selector(ViewController.doSomeThing), for: UIControl.Event.touchUpInside)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.orange.cgColor
        return button
    }()
    
    @objc func doSomeThing(){
        print("hello")
        //  let detailVC = DetailViewController()
    // self.present(detailVC, animated: true, completion: nil)
        //self.presentDetail(detailVC)
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        conficImg()
        conficBigDesTop()
        conficBigDesBot()
        conficSmallDes()
        conficButton()
    }
    
    
    func conficImg(){
        self.view.addSubview(imgageVewi)
        
        imgageVewi.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        imgageVewi.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        imgageVewi.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        imgageVewi.heightAnchor.constraint(equalToConstant: 430 ).isActive = true
    }
    
    func conficBigDesTop(){
        self.view.addSubview(bigDescriptionTop)
        bigDescriptionTop.topAnchor.constraint(equalTo: imgageVewi.bottomAnchor, constant: 10).isActive = true
        bigDescriptionTop.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        bigDescriptionTop.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        bigDescriptionTop.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    func conficBigDesBot(){
        self.view.addSubview(bigDescriptionTBot)
        bigDescriptionTBot.topAnchor.constraint(equalTo: bigDescriptionTop.bottomAnchor, constant: 10).isActive = true
        bigDescriptionTBot.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 95).isActive = true
        bigDescriptionTBot.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        bigDescriptionTBot.heightAnchor.constraint(equalToConstant: 50 ).isActive = true
    }
    
    func conficSmallDes(){
        self.view.addSubview(smallDescription)
        smallDescription.topAnchor.constraint(equalTo: bigDescriptionTBot.bottomAnchor, constant: 10).isActive = true
        smallDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:50).isActive = true
        smallDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        smallDescription.heightAnchor.constraint(greaterThanOrEqualToConstant: 50).isActive = true
    }
    
    func conficButton(){
        self.view.addSubview(registerButton)
        registerButton.topAnchor.constraint(equalTo: smallDescription.bottomAnchor, constant: 50).isActive = true
        registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:20).isActive = true
        registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 50 ).isActive = true
    }
    
    

}

extension UIViewController {

    func presentDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.25
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        self.view.window!.layer.add(transition, forKey: kCATransition)

        present(viewControllerToPresent, animated: false)
    }

    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.25
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window!.layer.add(transition, forKey: kCATransition)

        dismiss(animated: false)
    }
}


