class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.string :author
      t.references :book

      t.timestamps
    end
  end
end
