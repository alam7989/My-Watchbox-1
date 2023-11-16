//
//  EntryCell.swift
//  My-Watchbox
//
//  Created by Audrey Lam on 11/15/23.
//

import UIKit

class EntryCell: UITableViewCell {

    @IBOutlet weak var entryCell: EntryCell!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // referenced from project 7
    
    // The entry associated with the cell
    var entry: Entry!
    

    // Initial configuration of the entry cell
    // 1. Set the main task property
    // 2. Update the UI for the given entry
    func configure(with entry: Entry) {
        // 1.
        self.entry = entry
        // 2.
        update(with: entry)
    }

    // Update the UI for the given task
    // 1. Set the title label
    // 2. Set the rating label
    
    // IN ENTRY DETAILS
    // 2. Hide the note label if entry.note property is empty. (This just helps the title label align with the completed button when there's no note)
    
    private func update(with entry: Entry) {
        titleLabel.text = entry.title
        ratingLabel.text = "Rating: \(entry.rating) / 5"
    }

    // This overrides the table view cell's default selected and highlighted behavior to do nothing, otherwise, the row would darken when tapped
    // This is just a design / UI polish for this particular use case. Since we also have the "Completed" button in the row, it looks kinda weird if the whole cell darkens during selection.
    // override func setSelected(_ selected: Bool, animated: Bool) { }
    // override func setHighlighted(_ highlighted: Bool, animated: Bool) { }

}
