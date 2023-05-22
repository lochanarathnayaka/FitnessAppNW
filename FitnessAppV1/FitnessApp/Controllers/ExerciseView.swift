//
//  ExerciseView.swift
//  FitnessApp
//
//  Created by Lochana Rathnayaka on 2023-05-20.
//

import UIKit

class ExerciseView: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    let tableView: UITableView = {
        let tv = UITableView()
        tv.separatorStyle = .none
        tv.allowsSelection = false
        return tv
    } ()
    
    let bandCellId = "bandCellId"
    
    let oneArray = [Info(image: "Fiticon2", title: "This type of exercise focuses on building muscle strength, power, and endurance.")]
    
    let twoArray = [Info(image: "FitnessApp", title: "These exercises aim to improve joint mobility and muscle flexibility.")]
    
    let threeArray = [Info(image: "Fiticon4", title: "These exercises focus on the connection between the mind and body, promoting relaxation, stress reduction, and mental well-being.")]
    
    let fourArray = [Info(image: "Fiticon3", title: "These exercises minimize stress on joints and are suitable for individuals with joint issues or injuries.")]
    
    let fiveArray = [Info(image: "Fiticon1", title: "This type of exercise mimics movements used in everyday activities, enhancing overall strength, stability, and mobility.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupTableView()
    }
    
    func setupNavigationBar() {
        navigationItem.title = "Exercises Categories"
        navigationController?.navigationBar.barTintColor = UIColor(red: 0, green: 255, blue: 198, alpha: 0)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemBlue, NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(BandCell.self , forCellReuseIdentifier: bandCellId)
        
        view.addSubview(tableView)
        tableView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right:view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0 )
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return oneArray.count
        }else if section == 2 {
            return twoArray.count
        }else if section == 3 {
            return threeArray.count
        }else if section == 4 {
            return fourArray.count
        }else if section == 5 {
            return fiveArray.count
        }
        return 1
    }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: bandCellId, for: indexPath) as! BandCell
            cell.pictureImageView.image = UIImage(named: oneArray[indexPath.item].image!)
            cell.titleLabel.text = oneArray[indexPath.item].title
            if indexPath.section == 1 {
                cell.pictureImageView.image = UIImage(named: twoArray[indexPath.item].image!)
                cell.titleLabel.text = twoArray[indexPath.item].title
            }else if indexPath.section == 2 {
                cell.pictureImageView.image = UIImage(named: threeArray[indexPath.item].image!)
                cell.titleLabel.text = threeArray[indexPath.item].title
            }else if indexPath.section == 3 {
                cell.pictureImageView.image = UIImage(named: fourArray[indexPath.item].image!)
                cell.titleLabel.text = fourArray[indexPath.item].title
            }else if indexPath.section == 4 {
                cell.pictureImageView.image = UIImage(named: fiveArray[indexPath.item].image!)
                cell.titleLabel.text = fiveArray[indexPath.item].title
            }
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 60
        }
    
        func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
            if let headerView = view as? UITableViewHeaderFooterView {
                headerView.contentView.backgroundColor = .white
                headerView.backgroundView?.backgroundColor = .black
                headerView.textLabel?.textColor = .black
            }
        }
    
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            if section == 0 {
                return "Strength Training/Resistance Exercise"
            } else if section == 1 {
                return "Flexibility/Stretching Exercises"
            }else if section == 2 {
                return "Mind-Body Exercises"
            }else if section == 3 {
                return "Low-Impact Exercises"
            }else if section == 4 {
                return "Functional Training"
            }
            return nil
        }
    }
    
    class BandCell: UITableViewCell {
        
        let cellView: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.white
            view.setCellShadow()
            return view
        }()
        
        let pictureImageView: UIImageView = {
            let iv = UIImageView()
            iv.contentMode = .scaleAspectFit
            return iv
        }()
        
        let titleLabel: UILabel = {
            let label = UILabel()
            label.text = "Name"
            label.textColor = .darkGray
            label.font = UIFont.boldSystemFont(ofSize: 15)
            return label
        }()
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            setup()
        }
        
        func setup() {
            backgroundColor = UIColor(red: 245, green: 245, blue: 245, alpha: 0)
            
            addSubview(cellView)
            cellView.addSubview(pictureImageView)
            cellView.addSubview(titleLabel)
            
            cellView.frame.size.height = 50
            cellView.frame.size.width = UIScreen.main.bounds.width
            pictureImageView.setAnchor(top: nil, left: cellView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 40, height: 40)
            pictureImageView.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive=true
            titleLabel.setAnchor(top: nil, left: pictureImageView.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 20, width: 50, height: 40)
            titleLabel.centerYAnchor.constraint(equalTo: pictureImageView.centerYAnchor).isActive=true
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    }
