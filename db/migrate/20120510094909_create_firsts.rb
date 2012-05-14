class CreateFirsts < ActiveRecord::Migration
  def change
    create_table :firsts do |t|
      t.string :name
      t.string :last
      t.string :name
      t.string :emailid
      t.string :user
      t.string :name
      t.string :password
      t.string :contact
      t.integer :number

      t.timestamps
    end
  end
end
