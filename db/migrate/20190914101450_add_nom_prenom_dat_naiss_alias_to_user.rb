class AddNomPrenomDatNaissAliasToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
    add_column :users, :dat_naiss, :date
    add_column :users, :alias, :string
  end
end
