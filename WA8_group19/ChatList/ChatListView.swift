//
//  ChatListView.swift
//  WA8_group19
//
//  Created by user267597 on 11/14/24.
//


import UIKitclass ChatListView: UIView {    var tableView: UITableView!        override init(frame: CGRect) {        super.init(frame: frame)        self.backgroundColor = .white        setupTableView()        initConstraints()    }        func setupTableView(){        tableView = UITableView()        tableView.translatesAutoresizingMaskIntoConstraints = false        self.addSubview(tableView)    }        func initConstraints(){        NSLayoutConstraint.activate([            tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)        ])    }        required init?(coder: NSCoder) {        fatalError("init(coder:) has not been implemented")    }}