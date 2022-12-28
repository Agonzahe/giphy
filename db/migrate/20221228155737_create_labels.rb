class CreateLabels < ActiveRecord::Migration[7.0]
  def change
    create_table :labels do |t|
      t.string :nombre
      t.references :publicaciones, null: false, foreign_key: true

      t.timestamps
    end
  end
end
