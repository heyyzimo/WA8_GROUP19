////  MessageCell.swift//  WA8_group19////  Created by user267597 on 11/14/24.//import UIKitclass MessageCell: UITableViewCell {        let bubbleView: UIView = {        let view = UIView()        view.layer.cornerRadius = 15        view.translatesAutoresizingMaskIntoConstraints = false        return view    }()        let messageLabel: UILabel = {        let lbl = UILabel()        lbl.numberOfLines = 0        lbl.translatesAutoresizingMaskIntoConstraints = false        lbl.font = UIFont.systemFont(ofSize: 16)        return lbl    }()        let senderLabel: UILabel = {        let lbl = UILabel()        lbl.font = UIFont.systemFont(ofSize: 12)        lbl.textColor = .darkGray        lbl.translatesAutoresizingMaskIntoConstraints = false        return lbl    }()        let timeLabel: UILabel = {        let lbl = UILabel()        lbl.font = UIFont.systemFont(ofSize: 10)        lbl.textColor = .lightGray        lbl.translatesAutoresizingMaskIntoConstraints = false        return lbl    }()    var bubbleLeadingConstraint: NSLayoutConstraint!    var bubbleTrailingConstraint: NSLayoutConstraint!        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {        super.init(style: style, reuseIdentifier: reuseIdentifier)                contentView.addSubview(bubbleView)        bubbleView.addSubview(messageLabel)        bubbleView.addSubview(senderLabel)        bubbleView.addSubview(timeLabel)        NSLayoutConstraint.activate([            bubbleView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),            bubbleView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),            bubbleView.widthAnchor.constraint(lessThanOrEqualToConstant: 250),                        // Message Label Constraints            messageLabel.topAnchor.constraint(equalTo: bubbleView.topAnchor, constant: 8),            messageLabel.leadingAnchor.constraint(equalTo: bubbleView.leadingAnchor, constant: 8),            messageLabel.trailingAnchor.constraint(equalTo: bubbleView.trailingAnchor, constant: -8),                        // Sender Label Constraints            senderLabel.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 4),            senderLabel.leadingAnchor.constraint(equalTo: bubbleView.leadingAnchor, constant: 8),            senderLabel.trailingAnchor.constraint(equalTo: bubbleView.trailingAnchor, constant: -8),                        // Time Label Constraints            timeLabel.topAnchor.constraint(equalTo: senderLabel.bottomAnchor, constant: 2),            timeLabel.leadingAnchor.constraint(equalTo: bubbleView.leadingAnchor, constant: 8),            timeLabel.trailingAnchor.constraint(equalTo: bubbleView.trailingAnchor, constant: -8),            timeLabel.bottomAnchor.constraint(equalTo: bubbleView.bottomAnchor, constant: -4)        ])        bubbleLeadingConstraint = bubbleView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16)        bubbleTrailingConstraint = bubbleView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)    }        required init?(coder: NSCoder) {        fatalError("init(coder:) has not been implemented")    }    func configure(with message: MessageModel) {        messageLabel.text = message.text        senderLabel.text = message.senderName                let formatter = DateFormatter()        formatter.dateFormat = "MMM d, h:mm a"        timeLabel.text = formatter.string(from: message.timestamp)    }}