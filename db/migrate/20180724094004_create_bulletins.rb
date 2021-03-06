class CreateBulletins < ActiveRecord::Migration[5.2]
  def change
    create_table :bulletins do |t|
      t.timestamps
      t.string :title, null: false, default: 'untitled'
      t.string :content
      t.integer :category
      t.datetime :begin_time
      t.datetime :end_time
      t.references :author, references: :users, index: true
    end
  end
end
