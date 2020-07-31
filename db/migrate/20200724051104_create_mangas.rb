class CreateMangas < ActiveRecord::Migration[6.0]
  def change
    create_table :mangas do |t|
      t.string :title,               null: false
      t.string :author,              null: false
      t.string :volume,              null: false
      t.string :memo
      t.references :user,            foreign:true
      t.timestamps
    end
  end
end
