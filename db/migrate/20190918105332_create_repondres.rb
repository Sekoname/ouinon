class CreateRepondres < ActiveRecord::Migration[6.0]
  def change
    create_table :repondres do |t|
      t.references :user, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
