class CreateAomments < ActiveRecord::Migration[5.2]
  def change
    create_table :aomments do |t|
      t.text :body
      t.references :answer, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
