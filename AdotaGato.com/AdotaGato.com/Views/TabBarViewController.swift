//
//  TabBarViewController.swift
//  AdotaGato.com
//
//  Created by Nicole Taufenbach on 20/01/22.
//

import Foundation
import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = CadastroViewController()
        let vc2 = DisponiveisViewController()
        let vc3 = AcompanhamentoViewController()
        
        vc1.title = "Cadastro"
        vc2.title = "Disponíveis"
        vc3.title = "Acompanhamento"
        
        vc1.navigationItem.largeTitleDisplayMode = .always
        vc2.navigationItem.largeTitleDisplayMode = .always
        vc3.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        
        nav1.tabBarItem = UITabBarItem(title: "Cadastro", image: UIImage(systemName: "plus"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Disponíveis", image: UIImage(systemName: "pawprint"), tag: 1)
        nav3.tabBarItem = UITabBarItem(title: "Acompanhamento", image: UIImage(systemName: "book.closed"), tag: 1)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2, nav3], animated: false)
    }
    
}
