class AddVoteableIdToVotes < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :voteable_id, :integer
  end
end
