////  SentMessageCell.swift//  WA8_group19////  Created by user267597 on 11/14/24.//import UIKitclass SentMessageCell: MessageCell {        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {        super.init(style: style, reuseIdentifier: reuseIdentifier)        bubbleView.backgroundColor = UIColor.systemBlue.withAlphaComponent(0.7)        messageLabel.textColor = .white                bubbleTrailingConstraint.isActive = true        bubbleLeadingConstraint.isActive = false    }        required init?(coder: NSCoder) {        fatalError("init(coder:) has not been implemented")    }}