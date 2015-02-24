class CreateToreads < ActiveRecord::Migration
  def change
    create_table :toreads do |t|
      t.string :title
      t.text :description
      t.boolean :read

      t.timestamps null: false
    end
  end
end
