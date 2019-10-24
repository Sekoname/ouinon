class CreateAvoirs < ActiveRecord::Migration[6.0]
  def change
    create_table :avoirs do |t|
      t.references :reponse, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
