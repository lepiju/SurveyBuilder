//
//  MainTabBarController.swift
//  SurveyBuilder
//
//  Created by redpanda on 2020-10-22.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .paleGrayBlue
        setupTabBar()
    }
    
    func setupTabBar() {
                
        let editController = UINavigationController(rootViewController: EditSurveyViewController())
        editController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.fontAwesomeRegular.withSize(20)], for: .normal)
        editController.tabBarItem.title = .edit
         
        let showController = UINavigationController(rootViewController: ShowSurveyViewController())
        showController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.fontAwesomeRegular.withSize(20)], for: .normal)
        showController.tabBarItem.title = .playCircle
        
        let resultsController = UINavigationController(rootViewController: ResultsViewController())
        resultsController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.fontAwesomeRegular.withSize(20)], for: .normal)
        resultsController.tabBarItem.title = .clipboard
        
        viewControllers = [editController, showController, resultsController]
    }
}
