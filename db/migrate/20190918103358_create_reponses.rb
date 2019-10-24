class CreateReponses < ActiveRecord::Migration[6.0]
  def change
    create_table :reponses do |t|
      t.string :lib_reponse

      t.timestamps
    end
  end
end
