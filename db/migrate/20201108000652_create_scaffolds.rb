class CreateScaffolds < ActiveRecord::Migration[5.2]
  def change
    create_table :scaffolds do |t|
      t.string :user
      t.string :name
      t.integer :gender, default: 0, null: false
      t.date :birthday
      t.references :prefecture, foreign_key: true

      t.timestamps
    end
  end
end
