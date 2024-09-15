class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :author
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end