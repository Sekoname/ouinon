class CreateCommentaires < ActiveRecord::Migration[6.0]
  def change
    create_table :commentaires do |t|
      t.string :contenu
      t.datetime :dat_com
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
