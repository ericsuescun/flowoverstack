class AddVoteableTypeToVotes < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :voteable_type, :string
  end
end
