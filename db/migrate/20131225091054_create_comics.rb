class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :title
      t.text :description
      t.string :creator

      t.timestamps
    end
  end
end
