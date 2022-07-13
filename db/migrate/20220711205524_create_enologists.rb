class CreateEnologists < ActiveRecord::Migration[7.0]
  def change
    create_table :enologists do |t|
      t.string :type
      t.integer :age
      t.string :nationality
      t.string :company
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
