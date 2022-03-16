//
//  ViewController.swift
//  SpiltViewCon
//
//  Created by Coditas on 16/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    let splitVC = UISplitViewController(style: .doubleColumn)


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 300, height: 70))
        button.setTitle("Present", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        view.addSubview(button)
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }
    
    @objc private func didTapButton() {
        
        let menuVC = Menucontroller(style: .plain)
        menuVC.delegate = self
        let secondVC = UIViewController()
        secondVC.title = "Home"
        secondVC.view.backgroundColor = .systemRed
        
        splitVC.viewControllers = [
        
            UINavigationController(rootViewController: menuVC),
            UINavigationController(rootViewController: secondVC)
        ]
        
        present(splitVC, animated: true)
    }


}

extension ViewController: MenuControllerDelegate{
    func didTapMenuItem(at index: Int, title: String?) {
        
        (splitVC.viewControllers.last as? UINavigationController)?.popToRootViewController(animated: true)
        
        
        let vc = UIViewController()
        vc.view.backgroundColor = .purple
        vc.title = title
        
        (splitVC.viewControllers.last as? UINavigationController)?.pushViewController(vc, animated: true)
    }
    
    
}

protocol MenuControllerDelegate: AnyObject {
    func didTapMenuItem(at index: Int, title: String?)
    
}

class Menucontroller: UITableViewController {
    
    weak var delegate: MenuControllerDelegate?
    
    override init(style: UITableView.Style) {
        super.init(style: style)
        title = "Menu"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Option \(indexPath.row)"
        cell.accessoryType = .disclosureIndicator
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let cellLabel  = tableView.cellForRow(at: indexPath)?.textLabel?.text
        delegate?.didTapMenuItem(at: indexPath.row, title: cellLabel)
    }
    
}


