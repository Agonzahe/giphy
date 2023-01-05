class CreatePublicaciones < ActiveRecord::Migration[7.0]
  def change
    create_table :publicaciones do |t|
      t.string :titulo
      t.text :descripcion
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
