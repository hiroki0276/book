class AddIndexToMangas < ActiveRecord::Migration[6.0]
  def change
    add_index :mangas, [:title,:author], length: 32
  end
end
