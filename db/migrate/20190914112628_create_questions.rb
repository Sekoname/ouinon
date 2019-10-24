class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :titre
      t.string :libelle
      t.datetime :dat_pub
      t.boolean :etat

      t.timestamps
    end
  end
end
